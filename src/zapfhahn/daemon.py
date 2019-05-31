"""
(c) 2019 Andreas Hoenle (andreas.hoenle@gmail.com)

The continuously running daemon that gives us beer
"""

import os

import RPi.GPIO as GPIO
import time
import yaml

from statemachine import StateMachine, State

from utils.log import get_logger

from database.dblog import DbLogger
from hardware.fingerprint import SaufFinger
from hardware.flowmeter import Flowmeter
from hardware.valve import MagneticValve

from logging import DEBUG

log = get_logger(os.path.basename(__file__), level=DEBUG)

config_file = "daemon_config.yaml"


# TODO: Switch on Fingerprint LEDs whenever we're waiting for finger input
#       Let them blink while the valves are open
#       Switch them off when the valves close


class StateAttributes:
    """
    helper class that stores all the changing attributes that are required in the
    various states
    """

    # user_index of the database entry that is being processes
    user_index = None
    # name of the person behind the user_index
    user_name = ""
    # valve info
    valve_slot = -1
    valve_pin = -1
    valve_name = ""
    valve_quantity_ml = -1
    valve_timeout_seconds = -1
    valve_open_time = ""
    valve_close_time = ""
    # counter info
    counter_name = ""
    counter_pin = -1
    counter_slot = -1
    counter_ticks = -1
    counter_global_ticks = -1
    counter_conv_factor = -1
    quantity_ml = 0
    # tapping procedure exit status
    tap_status = "STATUS_UNKNW"
    # screenshot names from webcam
    screenshot1 = ""
    screenshot2 = ""
    # misc
    misc = ""

    def add_valve(self, valve):
        if not valve:
            return
        self.valve_pin = valve.pin
        self.valve_slot = valve.slot
        self.valve_name = valve.name
        self.valve_quantity_ml = valve.quantity_ml
        self.valve_timeout_seconds = valve.timeout_seconds

    def add_counter(self, counter):
        if not counter:
            return
        self.counter_name = counter.name
        self.counter_pin = counter.pin
        self.counter_slot = counter.slot
        self.counter_ticks = counter.ticks
        self.counter_global_ticks = counter.global_count["ticks"]
        self.counter_conv_factor = counter.conversion_factor
        self.quantity_ml = counter.ml


class SaufDaemon(StateMachine):
    """
    A class of settings that implements a run function that implements the daemon.
    The daemon is implemented as a state machine
    """

    # reset state
    reset = State("reset", initial=True)
    # waiting for fingerprint sensor input
    waiting_finger = State("waiting_finger")
    # checking the ID
    checking = State("checking")
    # opening the valves
    opening = State("opening")
    # waiting for valves to measure requested quantity
    waiting_valve = State("waiting_valve")
    # closing the valves
    closing = State("closing")
    # logging the tapped quantity
    logging = State("logging")
    error = State("error")

    next = reset.to(waiting_finger)
    next |= waiting_finger.to(checking)
    next |= checking.to(opening)
    next |= opening.to(waiting_valve)
    next |= waiting_valve.to(closing)
    next |= closing.to(logging)
    next |= logging.to(waiting_finger)

    def __init__(self, name):
        self.name = name
        # global configuration
        self.config = self.load_config()
        # attributes that need to be carried from one state to another
        self.attributes = StateAttributes()
        # hardware
        self.finger = SaufFinger()
        self.valves = self.__init_valves()
        self.flowmeters = self.__init_flowmeters()
        self.__sanity_checks()
        # database
        self.dblog = DbLogger()

    def __del__(self):
        """ cleanup GPIO """
        GPIO.cleanup()

    def _dump_config(self):
        """ expert use only! dump and overwrite current config on disk """
        with open(config_file, "w") as cfg_out:
            yaml.dump(self.config, cfg_out, default_flow_style=False)

    def __init_valves(self):
        """ initialize the valves with settings from the global config """
        log.info("Initializing %d valves", len(self.config["valves"]))
        return [MagneticValve(**settings) for settings in self.config["valves"]]

    def __init_flowmeters(self):
        """ initialize the flowmeters with settings from the global config """
        log.info("Initializing %d flowmeters", len(self.config["flowmeters"]))
        return [Flowmeter(**settings) for settings in self.config["flowmeters"]]

    def __sanity_checks(self):
        """ run sanity checks to avoid undefined behaviour later """
        for valve in self.valves:
            for meter in self.flowmeters:
                if meter.slot == valve.slot:
                    break
            else:
                raise RuntimeError(
                    "Registered valve in slot {} has now corresponding flowmeter".format(
                        valve.slot
                    )
                )
        for meter in self.flowmeters:
            for valve in self.valves:
                if valve.slot == meter.slot:
                    break
            else:
                raise RuntimeError(
                    "Registered flowmeter in slot {} has now corresponding valve".format(
                        valve.slot
                    )
                )

    def load_config(self):
        """ load settings from a yaml file on disk """
        if os.path.isfile(config_file):
            with open(config_file) as cfg_in:
                return yaml.load(cfg_in)
        # no config file - default settings
        return {
            "valve_global_timeout_seconds": 40,
            "valves": [
                {
                    "name": "valve_slot0",
                    "pin": 21,
                    "slot": 0,
                    "quantity_ml": 500,
                    "timeout_seconds": 20,
                },
                {
                    "name": "valve_slot1",
                    "pin": 20,
                    "slot": 1,
                    "quantity_ml": 500,
                    "timeout_seconds": 20,
                },
                {
                    "name": "valve_slot2",
                    "pin": 16,
                    "slot": 3,
                    "quantity_ml": 500,
                    "timeout_seconds": 20,
                },
                {
                    "name": "valve_slot3",
                    "pin": 12,
                    "slot": 4,
                    "quantity_ml": 500,
                    "timeout_seconds": 20,
                },
            ],
            "flowmeters": [
                {"name": "flowmeter_slot0", "pin": 26, "slot": 0},
                {"name": "flowmeter_slot1", "pin": 19, "slot": 1},
                {"name": "flowmeter_slot2", "pin": 13, "slot": 3},
                {"name": "flowmeter_slot3", "pin": 6, "slot": 4},
            ],
        }

    def run(self):
        # initialise the state machine
        StateMachine.__init__(self)
        while True:
            try:
                if self.current_state == self.error:
                    log.error("Ended up in error state")
                    log.error("Sleeping for 5s and going to reset")
                    time.sleep(5)
                    self.current_state = self.reset
                    continue
                self.next()
            except KeyboardInterrupt:
                log.debug("Caught KeyboardInterrupt. Exiting gracefully")
                break
            except Exception as e:
                log.error(
                    "Encountered exception of type '%s' in run loop. Exception message: '%s'. Going to error state.",
                    type(e),
                    str(e),
                )
                self.current_state = self.error

    #
    # handlers for the various states
    #
    def on_enter_reset(self):
        """ reset the StateAttributes, reset the hardware if necessary """
        log.info("Entering reset")
        # Reset the SaufFinger
        # Have two options:
        #   1) re-initialize finger every time we enter this state
        #   2) make global finger object
        # Testing option 1) for now, as it provides additional checks that are
        # executed on every initialization. If this works without huge delay it's
        # probably the better solution
        try:
            self.finger = SaufFinger()
        except Exception:
            self.run(self.error)
        self.attributes = StateAttributes()
        # Reset the valves

        # Reset the counters

    def on_enter_waiting_finger(self):
        log.info("Entering waiting for finger")
        # self.finger.lights_on()
        idx, name = self.finger.read_single()
        self.attributes.user_index = idx
        self.attributes.user_name = name

    def on_enter_checking(self):
        log.info("Entering checking ID")

    def on_enter_opening(self):
        log.info("Entering open valves")
        for valve in self.valves:
            valve.open()
        self.attributes.valve_open_time = formatted_time()

    def on_enter_waiting_valve(self):
        log.info("Entering waiting for valves")
        # reset the flow meters to measure only the delta
        for meter in self.flowmeters:
            meter.reset()
        # enable blinking to visualize user we're ready
        # self.finger.run_blinking(timebase=1)
        # - check all valves for changes
        # - as soon as one reached a delta of XY (20??) ml close all the others
        # - when the threshold (self.config.valve_quantity_ml) is reached close the remaining
        # - done
        start = time.time()
        flowmeter_threshold_ml = 20
        chosen_valve = None
        chosen_flowmeter = None
        log.debug("Waiting for tap procedure to complete...")
        while True:
            # check for timeout
            reached_timeout = (
                time.time() - start > self.config["valve_global_timeout_seconds"]
            )
            if chosen_valve:
                reached_timeout |= time.time() - start > chosen_valve.timeout_seconds
            if reached_timeout:
                # burst blink to signal user something is wrong
                log.warning("Tapping procedure timed out!")
                # self.finger.stop_blinking()
                # self.finger.blink("burst", times=5)
                self.attributes.tap_status = "TAP_TIMEOUT"
                break
            # check if a valve was chosen
            if not chosen_valve:
                # need to check all that are registered
                for meter in self.flowmeters:
                    if meter.milliliters > flowmeter_threshold_ml:
                        chosen_flowmeter = meter
                        # find the valve in the same slot
                        for valve in self.valves:
                            if valve.slot == meter.slot:
                                log.debug("Chosen valve is %s", valve.name)
                                chosen_valve = valve
                            else:
                                # close all other valves
                                log.debug("Closing unchosen valve %s", valve.name)
                                valve.close()
                continue
            # chosen_valve and chosen_flowmeter are guaranteed to be set because
            # of __sanity_checks()
            # wait for tapping procedure to complete
            if chosen_flowmeter.ml > chosen_valve.quantity_ml:
                # self.finger.stop_blinking()
                log.debug("Surpassed desired quantity of %s", chosen_valve.quantity_ml)
                chosen_valve.close()
                self.attributes.tap_status = "TAP_COMPLETE"
                break
        # self.finger.stop_blinking()  # in case we exit the loop without calling this
        # self.finger.lights_off()
        self.attributes.add_valve(chosen_valve)
        self.attributes.add_counter(chosen_flowmeter)
        log.info(
            "Tapping procedure finished. Consumed = %d ml", self.attributes.quantity_ml
        )

    def on_enter_closing(self):
        log.info("Entering closing valves")
        for valve in self.valves:
            valve.close()
        self.attributes.valve_close_time = formatted_time()

    def on_enter_logging(self):
        log.info("Entering logging")
        self.dblog.log(self.attributes)

    def on_enter_error(self):
        log.error("Entering error")


def formatted_time():
    return time.strftime("%Y-%m-%d %H:%M:%S")


if __name__ == "__main__":
    daemon = SaufDaemon("saufen")
    # daemon._dump_config()
    daemon.run()
