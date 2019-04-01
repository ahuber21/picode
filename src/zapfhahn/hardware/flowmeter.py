"""
Implements the interface to the flowmeter
"""

import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BCM)

class Flowmeter:
    """
    Flowmeter class.

    Wire it up to the Raspberry Pi on a GPIO pin.
    The default constructor will take the GPIO Pin Number as an argument.
    """

    def __init__(self, pin):
        self.pin = pin
        self.ticks = 0
        self.conversion_factor = 1
        self.register_event_listener()

    def register_event_listener(self):
        """
        Registers the event listener for the specified pin
        """
        GPIO.setup(self.pin, GPIO.IN)
        GPIO.add_event_detect(self.pin, GPIO.RISING, callback=self.tick)

    def tick(self, *args, **kwargs):
        """
        Callback for the GPIO pin event listener
        """
        self.ticks += 1

    def calib(self):
        """
        Interactive calibration. Returns true if calibration is successful.
        """
        print("Flowmeter - starting calibration mode")
        ticks_start = self.ticks
        print("Current tick counter is {}".format(ticks_start))
        print("Please start tapping beer now and note down the quantity!")
        print("Please enter how much you tapped in MILLILITERS.")
        while True:
            quantity = input("> ")
            try:
                quantity = int(quantity)
            except ValueError:
                print("Could not convert {} to an integer. Try again entering the tapped amount.".format(quantity))
            else:
                break
        ticks_end = self.ticks
        ticks_diff = ticks_end - ticks_start
        self.conversion_factor = ticks_diff / quantity
        print("{} - {} = {} ticks for {} ml -> conversion factor is {} ticks per ml.".format(ticks_end, ticks_start, ticks_diff, quantity, self.conversion_factor))
        print("Calibration successful.")
        return True

    def milliliters(self):
        """
        Return the current measured quantity in milliliters.
        """
        milliliters = self.ticks / self.conversion_factor
        return milliliters

    def liters(self):
        """
        Return the current measured quantity in liters.
        """
        return self.milliliters() / 1000.