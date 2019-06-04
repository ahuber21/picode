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

import pyfingerprint.pyfingerprint as pyfinger
import threading
import time
import yaml


from argparse import ArgumentParser
from pyfingerprint.pyfingerprint import PyFingerprint

from utils.log import get_logger

from logging import DEBUG
log = get_logger(os.path.basename(__file__), level=DEBUG)

finger_port = "/dev/serial0"
finger_baud = 57600
finger_addr = 0xFFFFFFFF
finger_pass = 0x00000000

database_file = "fingers.yml"

log.debug("Using pyfingerprint library from %s", pyfinger.__file__)


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
                log.warning("Index %d already exists and names don't match", idx)
                log.warning("database[idx]      = '%s'", self.database[idx])
                log.warning("name to be written = '%s'", name)
                log.warning("Updating entry to new name '%s'", name)
        self.database[idx] = name
        with open(database_file, "w") as db_file:
            yaml.dump(self.database, db_file, default_flow_style=False)

    def test_generate_rng(self):
        return self.finger.generateRandomNumber()

    def read_single(self):
        """ read a single template index and return a (idx, name) pair """
        while True:
            log.debug("Waiting for finger")
            while self.finger.readImage() == False:
                time.sleep(0.05)

            ## Converts read image to characteristics and stores it in charbuffer 1
            try:
                self.finger.convertImage(0x01)
            except Exception as e:
                log.warning("Ignoring exception in convertImage: %s", str(e))

            ## Checks if finger is already enrolled
            result = self.finger.searchTemplate()
            idx = result[0]
            if idx in self.database:
                log.debug("Successfully read idx %d which belongs to %s", idx, self.database[idx])
                return (idx, self.database[idx])
            log.warning("Did not recognize finger")

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

    def download_image(self, page_index, file_name):
        """ Download the image at page_index into file_name """
        self.finger.loadTemplate(page_index)
        self.finger.downloadImage(file_name)

    def enroll(self, name):
        """Enroll a new finger and put the save the (idx, name) pair to the DB"""
        print("Enroll: Trying to register '{}'".format(name))
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
            print("Enroll: Template already exists at position #{}".format(position_number))
            self.__insert_into_database(position_number, name)
            return position_number

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
            raise ValueError("Fingers do not match")

        ## Creates a template
        self.finger.createTemplate()

        ## Saves template at new position number
        position_number = self.finger.storeTemplate()
        self.__insert_into_database(position_number, name)
        print("Enroll: Finger enrolled successfully!")
        print("Enroll: New template position #{}".format(position_number))
        return position_number


def debug(finger):
    """ misc debug operations for R&D """
    # trying to understand why the returned value when searching the next free index is
    # always 0
    idx = finger.finger.getTemplateIndex(0)
    print(idx)


def main(args):
    """ main function """
    finger = SaufFinger()
    if args.enroll:
        finger.enroll(args.enroll)
    if args.debug:
        debug(finger)


if __name__ == "__main__":
    """
    If module is executed as main, provide a couple of high level finger interfaces,
    like enrolling a new finger to the database.
    """
    parser = ArgumentParser()
    parser.add_argument("--enroll", help="Enroll a new finger", metavar="name")
    parser.add_argument("--debug", help="Debug - expert use only", action="store_true")
    # parser.add_argument("--reset", help="Clear the databases")
    main(parser.parse_args())
