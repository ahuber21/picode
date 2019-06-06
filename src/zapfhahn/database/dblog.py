"""
(c) 2019 Andreas Hoenle (andreas.hoenle@gmail.com)

High-level access to the SaufDatabase

NEVER implement any function that overwrite values - always backup!
"""

import os

import mysql.connector as mariadb
import time

from utils.log import get_logger

from logging import DEBUG

log = get_logger(os.path.basename(__file__), level=DEBUG)


class DbLogger:
    """ High-level interface to the SaufDatabase """

    connection = mariadb.connect(
        user="suffi", password="NU-AD-76", database="SaufDatabase"
    )
    cursor = connection.cursor()

    def log(self, attributes):
        """ create a log entry in the database """
        # prepare request
        query = """INSERT INTO `taps`
                    (`user_index`, `user_name`, `finger_name`, `finger_index`, `finger_sensor_index`,
                      `datetime`,
                      `valve_slot`, `valve_name`, `valve_pin`, `valve_quantity_ml`,
                      `valve_timeout_seconds`, `valve_open_time`, `valve_close_time`,
                      `counter_name`, `counter_pin`, `counter_slot`, `counter_global_ticks`,
                      `counter_ticks`, `counter_conv_factor`, `quantity_ml`,
                      `tap_status`,
                      `screenshot1`, `screenshot2`,
                      `misc`)
                    VALUES
                      (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s) """
        values = (
            attributes.fingerprint.owner.idx,
            attributes.fingerprint.owner.name,
            attributes.fingerprint.name,
            attributes.fingerprint.idx,
            attributes.fingerprint.sensor_idx,
            time.strftime("%Y-%m-%d %H:%M:%S"),
            attributes.valve_slot,
            attributes.valve_name,
            attributes.valve_pin,
            attributes.valve_quantity_ml,
            attributes.valve_timeout_seconds,
            attributes.valve_open_time,
            attributes.valve_close_time,
            attributes.counter_name,
            attributes.counter_pin,
            attributes.counter_slot,
            attributes.counter_global_ticks,
            attributes.counter_ticks,
            attributes.counter_conv_factor,
            attributes.quantity_ml,
            attributes.tap_status,
            attributes.screenshot1,
            attributes.screenshot2,
            attributes.misc,
        )
        log.debug("db query values")
        log.debug(values)
        # execute
        self.cursor.execute(query, values)
        self.connection.commit()
