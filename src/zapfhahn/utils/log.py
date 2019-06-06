"""
(c) 2019 Andreas Hoenle (andreas.hoenle@gmail.com)
"""

import logging
import time
# import os

from copy import copy

# logging color values
MAPPING = {
    "DEBUG": 37,  # white
    "INFO": 36,  # cyan
    "WARNING": 33,  # yellow
    "ERROR": 31,  # red
    "CRITICAL": 41,  # white on red bg
}
PREFIX = "\033["
SUFFIX = "\033[0m"


class ColoredFormatter(logging.Formatter):
    def __init__(self, patern):
        logging.Formatter.__init__(self, patern)

    def format(self, record):
        colored_record = copy(record)
        levelname = colored_record.levelname
        seq = MAPPING.get(levelname, 37)  # default white
        colored_levelname = ("{0}{1}m{2}{3}").format(PREFIX, seq, levelname, SUFFIX)
        colored_record.levelname = colored_levelname
        return logging.Formatter.format(self, colored_record)


def get_logger(name, level=logging.INFO):
    log = logging.getLogger(name)
    log.setLevel(level)
    formatter = ColoredFormatter(
        "\r%(asctime)s [%(levelname)s] in %(name)s:%(funcName)s: %(message)s"
    )
    ch = logging.StreamHandler()
    ch.setFormatter(formatter)
    ch.setLevel(level)
    log.addHandler(ch)

    logging_file = "/home/pi/logs/zapfhahn.log"
    # if os.path.isfile(logging_file):
    #     backup_file = logging_file.replace(".log", "-bak-{}.log".format(time.strftime("%Y-%M-%d-%H%M%S")))
    #     os.rename(logging_file, backup_file)

    fh = logging.FileHandler(logging_file, mode="w+")
    fh.setFormatter(formatter)
    fh.setLevel(logging.DEBUG)
    log.addHandler(fh)

    return log
