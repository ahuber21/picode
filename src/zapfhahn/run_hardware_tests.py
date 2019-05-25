"""
Runs a couple of tests for the classes in the hardware dir
"""

import time

from hardware.flowmeter import Flowmeter
from hardware.fingerprint import SaufFinger


def main():
    # test_flowmeter()
    test_fingerprint()


def test_flowmeter():
    """
    Create a flowmeter class and let it run for a while.
    """
    fm = Flowmeter(14)
    assert fm.calib(), "Calibration failed."
    print("Current milliliters: {}".format(fm.milliliters()))
    print("Current liters:      {}".format(fm.liters()))


def test_fingerprint():
    finger = SaufFinger()
    finger.run()

if __name__ == "__main__":
    main()
