#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
(c) 2019 Andreas Hoenle (andreas.hoenle@gmail.com)

Fingerprint sensor wrapper

Rationale:
This code is designed to be run continuously.
We permanently wait for a finger.read() to finish.
A successful read will send a signal to a handler function.
The handler determines which template was read.
"""

import os

import threading
import time
import yaml

from argparse import ArgumentParser
from pyfingerprint.pyfingerprint import PyFingerprint

from utils.log import get_logger

log = get_logger(os.path.basename(__file__))

finger_port = "/dev/serial0"
finger_baud = 57600
finger_addr = 0xFFFFFFFF
finger_pass = 0x00000000

database_file = "fingers.yml"


class SaufFinger:
    def __init__(self):
        # initialize fingerprint sensor
        try:
            self.finger = PyFingerprint(
                finger_port, finger_baud, finger_addr, finger_pass
            )
        except Exception as e:
            log.error("The fingerprint sensor could not be initialized!")
            # re-raise
            raise e
        if self.finger.verifyPassword() == False:
            raise ValueError("The given fingerprint sensor password is wrong!")
        # initialize threads and events for stand-alone operation
        self.read_thread = threading.Thread(target=self.read_loop)
        self.process_thread = threading.Thread(target=self.process_finger)
        self.stop_running = threading.Event()
        self.finger_available = threading.Event()
        self.template_index = None
        # initialize threads, events,... for LED helpers
        self.blink_thread = None  # depends on args - cannot be initialized here
        self.stop_blinking = threading.Event()
        self.lights_are_on = False
        # database
        self.database = self.__load_database()

    def __enter__(self):
        self.run()
        return self

    def __exit__(self, typ, value, traceback):
        self.stop()

    def __load_database(self):
        """Load the fingers database"""
        if os.path.isfile(database_file):
            with open(database_file) as db_file:
                return yaml.load(db_file)
        # if there is no DB, return an empty dict
        return dict()

    def __insert_into_database(self, idx, name):
        """Add the (idx, name) pair to the dictionary and save the file"""
        if idx in self.database:
            if self.database[idx] != name:
                log.error("Index %d already exists and names don't match", idx)
                log.error("database[idx]      = ", self.database[idx])
                log.error("name to be written = ", name)
                return
        self.database[idx] = name
        with open(database_file, "w") as db_file:
            yaml.dump(self.database, db_file, default_flow_style=False)

    def lights_on(self):
        log.error("Lights on is not yet implemented")
        self.lights_are_on = True

    def lights_off(self):
        log.error("Lights off is not yet implemented")
        self.lights_are_on = False

    def stop_blinking(self):
        """ wrapper around the stop_blinking Event """
        self.stop_blinking.set()

    def blink(self, mode="default", timebase=0.1, times=1):
        """
        Blink the fingerprint sensor LED for feedback
        Supported modes: default, burst
        Restores the original light state (on/off) afterwards

        If times=-1 blink will call itself repeatedly in a thread that can be signaled
        to stop with SaufFinger.stop_blink()
        """
        if times == -1:
            if not self.blink_thread:
                self.stop_blinking.clear()
                self.blink_thread = threading.Thread(target=self.blink, args=(mode, timebase, times=-1))
                self.blink_thread.run()
                return
            while not self.stop_blinking.is_set():
                self.blink(mode, timebase, times=1)
            self.stop_blinking.clear()
            return
        light_state = self.lights_are_on
        if mode == "default":
            for _ in times:
                time.sleep(timebase)
                self.lights_on()
                time.sleep(timebase)
                self.lights_off()
        elif mode == "burst":
            for _ in times:
                time.sleep(0.5 * timebase)
                self.lights_on()
                time.sleep(timebase)
                self.lights_off()
        if light_state:
            self.lights_on()
        else:
            self.lights_off()

    def read_single(self):
        """ read a single template index and return a (idx, name) pair """
        while True:
            idx = self.finger.getTemplateIndex()
            if idx in self.database:
                log.debug("Successfully read idx %d which belongs to %s", idx, self.database[idx])
                return (idx, self.database[idx])
            log.warning("Did not recognize finger")
            self.blink("burst", times=5)

    def run(self):
        """Run continuously. Emit a signal if a finger is read."""
        self.read_thread.start()
        self.process_thread.start()

    def stop(self):
        self.stop_running.set()
        self.read_thread.join()
        self.process_thread.join()

    def read_loop(self):
        """Continuously running thread that will watch sensor for newly read fingers"""
        while not self.stop_running.is_set():
            # getTemplateIndex is a blocking operation
            self.template_index = self.finger.getTemplateIndex()
            log.info("Read template from finger. Index %d", self.template_index)
            self.finger_available.set()

    def process_finger(self):
        """Continuously running thread that will process newly read fingers"""
        while True:
            if self.stop_running.is_set():
                return
            if not self.finger_available.is_set():
                time.sleep(0.1)
            self.finger_available.clear()
            log.info("Processing template with index %d", self.template_index)

    def enroll(self, name):
        """Enroll a new finger and put the save the (idx, name) pair to the DB"""
        print("Enroll: Waiting for finger...")

        ## Wait that finger is read
        while self.finger.readImage() == False:
            time.sleep(0.05)

        ## Converts read image to characteristics and stores it in charbuffer 1
        self.finger.convertImage(0x01)

        ## Checks if finger is already enrolled
        result = self.finger.searchTemplate()
        position_number = result[0]

        if position_number >= 0:
            print(f"Enroll: Template already exists at position #{position_number}")
            self.__insert_into_database(position_number, name)
            return

        print("Enroll: Remove finger...")
        time.sleep(2)

        print("Enroll: Waiting for same finger again...")

        ## Wait that finger is read again
        while self.finger.readImage() == False:
            time.sleep(0.05)

        ## Converts read image to characteristics and stores it in charbuffer 2
        self.finger.convertImage(0x02)

        ## Compares the charbuffers
        if self.finger.compareCharacteristics() == 0:
            print("Error in enroll: Fingers do not match")
            return

        ## Creates a template
        self.finger.createTemplate()

        ## Saves template at new position number
        position_number = self.finger.storeTemplate()
        self.__insert_into_database(position_number, name)
        print("Enroll: Finger enrolled successfully!")
        print(f"Enroll: New template position #{position_number}")


def main(args):
    """ main function """
    finger = SaufFinger()
    if args.enroll:
        finger.enroll("")


if __name__ == "__main__":
    """
    If module is executed as main, provide a couple of high level finger interfaces,
    like enrolling a new finger to the database.
    """
    parser = ArgumentParser()
    parser.add_argument("--enroll", help="Enroll a new finger", metavar="name")
    main(parser.parse_args())
