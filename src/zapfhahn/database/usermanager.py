# -*- coding: utf-8 -*-
"""
(c) 2019 Andreas Hoenle (andreas.hoenle@gmail.com)

All rights reserved.
"""

import time
import os

import mysql.connector as mariadb

from hardware.fingerprint import SaufFinger
from utils.log import get_logger

log = get_logger(os.path.basename(__file__), level="DEBUG")


class FingerprintFinder:
    connection = mariadb.connect(
        user="suffi", password="NU-AD-76", database="SaufDatabase"
    )
    cursor = connection.cursor()

    def find_idx(self, index):
        self.cursor.execute(
            "SELECT id, name, owner_name, owner_idx FROM fingerprints WHERE sensor_idx=%s;", (index,)
        )
        results = self.cursor.fetchall()
        if len(results) == 0:
            raise ValueError("Fingerprint with sensor_idx = {} does not exist".format(index))
        idx, name, owner_name, owner_idx = results[0]
        owner = User(owner_name)
        assert owner.exists, "I found a fingerprint with an owner that does not exist"
        finger = Fingerprint(name, owner)
        assert finger.exists, "I fetched a fingerprint but it does not exist? pls debug"
        return finger


class Fingerprint:
    connection = mariadb.connect(
        user="suffi", password="NU-AD-76", database="SaufDatabase"
    )
    cursor = connection.cursor()

    def __init__(self, name="", owner=None):
        self.name = name
        self.owner = owner
        self.__pic = None
        self.__idx = None
        self.__sensor_idx = None
        self.__exists = None

    def create(self):
        if not self.exists:
            log.info("Creating new db entry for fingerprint %s...", self.name)
            log.info("self.name       = %s", self.name)
            log.info("self.sensor_idx = %d", self.sensor_idx)
            log.info("self.owner.name = %s", self.owner.name)
            log.info("self.owner.idx  = %d", self.owner.idx)
            assert self.owner is not None, "Fingerprint has no owner - can not be added to database"
            self.cursor.execute(
                "INSERT INTO fingerprints (name, sensor_idx, owner_name, owner_idx) VALUES (%s, %s, %s, %s)", (self.name, self.sensor_idx, self.owner.name, self.owner.idx)
            )
            self.connection.commit()
            self.__exists = True
            self.__idx = self.cursor.lastrowid

    @property
    def pic(self):
        return self.__pic

    @pic.setter
    def pic(self, value):
        self.__pic = value
        # update the database
        if self.exists:
            self.cursor.execute(
                "UPDATE fingerprints SET imgdata=%s, imgtype='bmp' WHERE fingerprints.id=%s", (value, self.idx)
            )
            self.connection.commit()


    @property
    def idx(self):
        if self.exists:
            return self.__idx
        else:
            self.create()
            return self.idx

    @property
    def sensor_idx(self):
        if self.exists:
            assert self.__sensor_idx is not None, "Fingerprint exists but has no __sensor_idx - pls debug"
        return self.__sensor_idx

    @sensor_idx.setter
    def sensor_idx(self, value):
        self.__sensor_idx = value
        # update the database
        if self.exists:
            self.cursor.execute(
                "UPDATE fingerprints SET sensor_idx=%s WHERE fingerprints.id=%s", (value, self.idx)
            )
            self.connection.commit()

    @property
    def exists(self):
        if self.__exists is None:
            self.cursor.execute(
                "SELECT id, sensor_idx, name, imgdata FROM fingerprints WHERE owner_name=%s;", (self.owner.name,)
            )
            self.__exists = False
            for idx, sensor_idx, name, imgdata in self.cursor.fetchall():
                if name != self.name:
                    continue
                self.__exists = True
                self.__idx = idx
                self.__sensor_idx = sensor_idx
                self.__pic = imgdata
        return self.__exists


class User:
    """ A user that can be dumped to and read from the DB """

    connection = mariadb.connect(
        user="suffi", password="NU-AD-76", database="SaufDatabase"
    )
    cursor = connection.cursor()

    def __init__(self, name=""):
        self.name = name
        self.fingerprints = {
            fp_name: Fingerprint(name=fp_name, owner=self)
            for fp_name in [
                "thumb_right",
                "index_right",
                "middle_right",
                "ring_right",
                "pinky_right",
                "thumb_left",
                "index_left",
                "middle_left",
                "ring_left",
                "pinky_left",
            ]
        }
        self.__idx = None
        self.__exists = None

    def create(self):
        if not self.exists:
            log.info("Creating new db entry for user %s...", self.name)
            self.cursor.execute("INSERT INTO users (name) VALUES (%s)", (self.name,))
            self.connection.commit()
            self.__exists = True
            self.__idx = self.cursor.lastrowid

    @property
    def exists(self):
        if self.__exists is None:
            self.cursor.execute("SELECT idx FROM users WHERE name=%s", (self.name,))
            results = self.cursor.fetchall()
            if len(results) > 0:
                self.__exists = True
                self.__idx = results[0][0]
            else:
                self.__exists = False
        return self.__exists

    @property
    def idx(self):
        if self.exists:
            assert self.__idx is not None, "self.__idx is None even though user exists - pls debug"
            return self.__idx
        else:
            self.create()
        return self.idx


def sort_fingerprint_names(name):
    if name == "index_right":
        return 0
    if name == "index_left":
        return 1
    if name == "thumb_right":
        return 2
    if name == "thumb_left":
        return 3
    if name == "middle_right":
        return 4
    if name == "middle_left":
        return 5
    if name == "ring_right":
        return 6
    if name == "ring_left":
        return 7
    if name == "pinky_right":
        return 8
    if name == "pinky_left":
        return 9

class UserManager:
    """ Manage Users. Mainly required for its privileged access to the SaufFinger """
    connection = mariadb.connect(
        user="suffi", password="NU-AD-76", database="SaufDatabase"
    )
    cursor = connection.cursor()
    finger = SaufFinger()

    def _ask(self, message, requestedType=None):
        """ Ask for the message and make sure the answer is of requestedType"""
        log.info(message)
        while True:
            value = input("> ")
            if requestedType is not None:
                try:
                    value = requestedType(value)
                except ValueError:
                    print("Invalid choice. Please try again.")
                    continue
            return value

    def add_single_finger(self, fingerprint):
        """ add the single finger to the database for this user """
        while True:
            try:
                fingerprint.sensor_idx = self.finger.enroll("{}_{}".format(fingerprint.owner.name, fingerprint.name))
                break
            except Exception as e:
                log.warning("Ignoring error: '%s'", str(e))
                log.warning("Please try again")
        # download the image
        fingerprint.create()
        # finger_file_name = "./fingerprint_{}_{}.bmp".format(fingerprint.owner.name, fingerprint.name)
        # log.info("Now downloading the image")
        # self.finger.download_image(fingerprint.sensor_idx, finger_file_name)
        # with open(finger_file_name, "rb") as fin:
        #     fingerprint.pic = fin.read()
        # log.info(
        #     "Added {} for user {} with finger_index {}".format(
        #         fingerprint.name, fingerprint.owner.name, fingerprint.idx
        #     )
        # )
        fingerprint.sensor_idx

    def add_fingers_interactively(self, user, update_existing=False):
        """ add all fingers for this user interactively """
        assert user.idx is not None, "user.idx is None - this means she is not in the DB, can not continue"
        try:
            to_process = sorted([
                fingerprint
                for fingerprint in user.fingerprints.values()
                if update_existing or not fingerprint.exists
            ], key=lambda x: sort_fingerprint_names(x.name))
            while to_process:
                fingerprint = to_process.pop(0)
                self.add_single_finger(fingerprint)
                time.sleep(2)
            log.info("✅ all fingers are set!")
        except (KeyboardInterrupt, EOFError):
            log.debug(
                "Caught KeyboradInterrupt - returning without setting remaining fingers"
            )
            return
        # log.info("Now trying to read image data back from sensor")
        # for fingerprint in user.fingerprints.values():
        #     if not fingerprint.exists:
        #         continue
        #     if (not fingerprint.pic) or (len(fingerprint.pic) == 0) or update_existing:
        #         log.debug("%s creating/updating DB pic with latest version from sensor", fingerprint.name)
        #         while True:
        #             try:
        #                 self.finger.download_image(fingerprint.sensor_idx, "./fingerprint_{}_{}.bmp".format(fingerprint.owner.name, fingerprint.name))
        #                 break
        #             except TypeError as e:
        #                 raise e
        #             except Exception as e:
        #                 log.warning("Ignoring expcetion of type %s while reading image data: '%s'", type(e), str(e))
        #         with open("fingerprint.bmp", "rb") as fp_file:
        #             fingerprint.pic = fp_file.read()
        return True

    def add_user_interactive(self):
        """ Add a user by asking all required values and then committing it to the DB """
        while True:
            name = self._ask("Which user do you want to register?", requestedType=str)
            user = User(name=name)
            if user.exists:
                log.error(
                    "User %s already exists at index %d. Please choose a different name or run update_user.py.", user.name, user.idx
                )
                continue
            break
        user.create()
        log.info("Setting up user '%s' at index '%d'", user.name, user.idx)
        user = self.add_fingers_interactively(user)

    def update_user_interactive(self):
        """ Update a existing user by asking all required values and then committing it to the DB """
        while True:
            name = self._ask("Which user do you want to update?", requestedType=str)
            user = User(name=name)
            if not user.exists:
                log.error(
                    "User %s does not exist. Please choose a different name or run add_user.py.", user.name, user.idx
                )
                continue
            break
        log.info("Updating user '%s' at index '%d'", user.name, user.idx)
        answer = ""
        while answer != "y" and answer != "n":
            answer = self._ask("Overwrite existing [y/n]").lower()
        user = self.add_fingers_interactively(user, update_existing=(answer=="y"))
