"""
Do the GPIO stuff
"""

import RPi.GPIO as GPIO
import json

from utils.helpers import get_states, get_states_file

GPIO.setmode(GPIO.BCM)

class Switcher:
    states = get_states()

    def __init__(self):
        for port, value in self.states.items():
            port = int(port)
            print("Switcher: Setting up port {}".format(port))
            GPIO.setup(port, GPIO.OUT)
            GPIO.output(port, value == "true")

    def __del__(self):
        GPIO.cleanup()

    def switch(self, port, state):
        self.states[str(port)] = state
        GPIO.output(int(port), state == "true")
        with open(get_states_file(), "w") as fp:
            json.dump(self.states, fp)

