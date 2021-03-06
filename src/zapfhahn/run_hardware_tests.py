"""
Runs a couple of tests for the classes in the hardware dir
"""

import time
import RPi.GPIO as GPIO

from hardware.flowmeter import Flowmeter
from hardware.fingerprint import SaufFinger
from hardware.valve import MagneticValve


def main():
    try:
        # test_valve()
        test_flowmeter()
        # test_fingerprint()
    except:
        pass


def test_valve():
    """
    Create a dummy MagneticValve instance and open/close it

    pin21 is the bottom right pin
    """
    for pin in [12, 16, 20, 21]:
    # for pin in [21]*5:
        valve = MagneticValve(
            name="TestValve", pin=pin, slot=10, quantity_ml=100, timeout_seconds=40, debug=True
        )
        print("Opening valve on pin {}".format(pin))
        valve.open()
        print("Waiting 2 seconds...")
        time.sleep(2)
        print("Closing valve on pin {}".format(pin))
        valve.close()
    print("Test was successful if it all valves opened and closed")


def test_flowmeter():
    """
    Create a flowmeter instance and let it run for a while.
    """
    # fm = Flowmeter(pin=26, name="flowmeter_test", slot=10, debug=True)
    # fm = Flowmeter(pin=19, name="flowmeter_test", slot=10, debug=True)
    fm = Flowmeter(pin=13, name="flowmeter_test", slot=10, debug=True)
    # fm = Flowmeter(pin=6, name="flowmeter_test", slot=10, debug=True)
    for pin in [12, 16, 20, 21]:
        valve = MagneticValve(
            name="TestValve", pin=pin, slot=10, quantity_ml=100, timeout_seconds=40, debug=True
        )
        valve.open()
    if fm.conversion_factor != 1:
        print("Current calibration: {}".format(fm.conversion_factor))
    assert fm.calib(), "Calibration failed."
    print("Current milliliters: {}".format(fm.milliliters))
    print("Current liters:      {}".format(fm.liters()))


def test_fingerprint():
    """
    Test SaufFinger by printing a random number that it generated
    """
    try:
        finger = SaufFinger()
    except Exception as e:
        print("An exception was raised")
        print(str(e))
        print("SaufFinger is not available :(")
    else:
        print(finger.test_generate_rng())
        print("If we just printed a random number SaufFinger works!")


if __name__ == "__main__":
    main()
    GPIO.cleanup()
