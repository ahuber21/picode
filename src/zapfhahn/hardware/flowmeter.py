"""
(c) 2019 Andreas Hoenle (andreas.hoenle@gmail.com)

Implements the interface to the flowmeter
"""

import os

import RPi.GPIO as GPIO
import yaml

from argparse import ArgumentParser

if __name__ == "__main__":
    from valve import MagneticValve
else:
    from hardware.valve import MagneticValve

GPIO.setmode(GPIO.BCM)

calib_file = "flowmeter_calib.yml"


class Flowmeter:
    """
    Flowmeter class.

    Wire it up to the Raspberry Pi on a GPIO pin.
    The default constructor will take the GPIO Pin Number as an argument.
    """

    def __init__(self, name, pin, slot, valve_pin=None, debug=False):
        self.name = name
        self.pin = pin
        self.slot = slot
        self.ticks = 0
        # counter that can not be resetted and is stored to disk
        # TODO: database for this?
        self.global_count_fname = "flowmeter_global_count_{}.txt".format(
            self.name
        ).replace(" ", "_")
        self.global_count = self.__init_global_count()
        self.conversion_factor = self.load_calib()
        self.valve_pin = valve_pin
        self.debug = debug
        self.register_event_listener()

    def __init_global_count(self):
        """ load the global ticks from disk """
        if os.path.isfile(self.global_count_fname):
            with open(self.global_count_fname) as fin:
                return yaml.load(fin)
        return {"ticks": 0, "ml": 0}

    def __dump_global_count(self):
        """ dump the global ticks to disk """
        with open(self.global_count_fname, "w") as fout:
            yaml.dump(self.global_count, fout, default_flow_style=False)

    def __read_all_calibs(self):
        if os.path.isfile(calib_file):
            with open(calib_file) as calib_in:
                return yaml.load(calib_in)
        return dict()

    def register_event_listener(self):
        """
        Registers the event listener for the specified pin
        """
        GPIO.setup(self.pin, GPIO.OUT)
        GPIO.output(self.pin, GPIO.LOW)
        GPIO.setup(self.pin, GPIO.IN)
        GPIO.add_event_detect(self.pin, GPIO.RISING, callback=self.tick)

    def tick(self, *args, **kwargs):
        """
        Callback for the GPIO pin event listener
        """
        if self.debug and self.ticks % 100 == 0:
            print("flowmeter on pin #{} - ticks = {}".format(self.pin, self.ticks))
        self.ticks += 1
        self.global_count["ticks"] += 1
        if self.conversion_factor != 0:
            self.global_count["ml"] += 1.0 / self.conversion_factor
        if (self.global_count["ticks"] % 50) == 0:
            self.__dump_global_count()

    def reset(self):
        """ Reset the ticks counter """
        self.ticks = 0

    def calib(self):
        """
        Interactive calibration. Returns true if calibration is successful.
        """
        print("Flowmeter - starting calibration mode")
        ticks_start = self.ticks
        if self.valve_pin:
            valve = MagneticValve(
                name="calib",
                pin=self.valve_pin,
                slot=-2,
                quantity_ml=1e5,
                timeout_seconds=-2,
            )
            print("Opening valve on pin {}".format(self.valve_pin))
            valve.open()
        print("Current tick counter is {}".format(ticks_start))
        print("Please start tapping beer now and note down the quantity!")
        print("Please enter how much you tapped in MILLILITERS.")
        while True:
            quantity = input("> ")
            try:
                quantity = int(quantity)
            except ValueError:
                print(
                    "Could not convert {} to an integer. Try again entering the tapped amount.".format(
                        quantity
                    )
                )
            else:
                break
        ticks_end = self.ticks
        ticks_diff = ticks_end - ticks_start
        self.conversion_factor = ticks_diff / quantity
        print(
            "{} - {} = {} ticks for {} ml -> conversion factor is {} ticks per ml.".format(
                ticks_end, ticks_start, ticks_diff, quantity, self.conversion_factor
            )
        )
        print("Calibration successful.")
        self.write_calib()
        return True

    @property
    def milliliters(self):
        """
        Return the current measured quantity in milliliters.
        """
        milliliters = self.ticks / self.conversion_factor
        return milliliters

    @property
    def ml(self):
        """ wrapper around milliliters """
        return self.milliliters

    def liters(self):
        """
        Return the current measured quantity in liters.
        """
        return self.milliliters / 1000.0

    def load_calib(self):
        """ load the conversion factor from disk, if it exists """
        all_calibs = self.__read_all_calibs()
        if self.name in all_calibs:
            return all_calibs[self.name]
        return 1

    def write_calib(self):
        """ write the current conversion factor to disk, overwriting existing values """
        all_calibs = self.__read_all_calibs()
        if self.name in all_calibs:
            legacy_nr = 0
            while True:
                # find a legacy place for this calib
                legacy_idx = "{}_legacy_{}".format(self.name, legacy_nr)
                if legacy_idx in all_calibs:
                    legacy_nr += 1
                    continue
                print("Storing already existing value of {} as new key {}".format(all_calibs[self.name], legacy_idx))
                all_calibs[legacy_idx] = all_calibs[self.name]
                break
        all_calibs[self.name] = self.conversion_factor
        with open(calib_file, "w") as calib_out:
            yaml.dump(all_calibs, calib_out, default_flow_style=False)



if __name__ == "__main__":
    parser = ArgumentParser()
    parser.add_argument("--calib", help="Calibrate meter", action="store_true")
    parser.add_argument("--pin", help="Pin of meter", type=int)
    parser.add_argument("--name", help="Name of meter")
    parser.add_argument(
        "--valve_pin",
        help="Pin of the valve that goes open for calibration",
        default=None,
        type=int,
    )
    args = parser.parse_args()
    if args.calib:
        meter = Flowmeter(
            pin=args.pin, name=args.name, slot=99, valve_pin=args.valve_pin, debug=False
        )
        meter.calib()
