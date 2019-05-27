"""
(c) 2019 Andreas Hoenle (andreas.hoenle@gmail.com)

Wrapper around the valves
"""

import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BCM)

class MagneticValve():
    """ normally closed magnetic valve """
    def __init__(self, **kwargs):
        """
        Default initialiser

        Args:
            name: A name to identify the valve
            pin: The Raspberry Pi GPIO Pin
            slot: The slot in the setup (we usually count the taps from 0..3)
            quantity_ml: Allowed quantity to be tapped before auto-close
            timeout_seconds: Allowed time before auto-close

        Important: Auto-closing needs to be implemented elsewhere.
        Note: Currently we do the auto-closing in the daemon.
        """
        required_kwargs = ["name", "pin", "slot", "quantity_ml", "timeout_seconds"]
        for req in required_kwargs:
            if req not in kwargs:
                raise AttributeError("Missing required argument for MagenticValve: {}".format(req))
        for key, val in kwargs.items():
            setattr(self, key, val)
        GPIO.setup(self.pin, GPIO.OUT)
        self.close()

    def open(self):
        """ open the valve by setting the pin to LOW """
        GPIO.output(self.pin, GPIO.LOW)

    def close(self):
        """ close the valve by setting the pin to HIGH """
        GPIO.output(self.pin, GPIO.HIGH)