"""
(c) 2019 Andreas Hoenle (andreas.hoenle@gmail.com)

"""

import time

from threading import Thread

import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BCM)


class Display:
    pins = {
        "1": 2,
        "a": 3,
        "f": 4,
        "2": 25,
        "3": 8,
        "b": 22,
        "e": 10,
        "d": 9,
        "p": 11,
        "c": 17,
        "g": 27,
        "4": 7,
    }

    digitBitmap = {
        0: 0b00111111,
        1: 0b00000110,
        2: 0b01011011,
        3: 0b01001111,
        4: 0b01100110,
        5: 0b01101101,
        6: 0b01111101,
        7: 0b00000111,
        8: 0b01111111,
        9: 0b01100111,
    }
    masks = {
        "a": 0b00000001,
        "b": 0b00000010,
        "c": 0b00000100,
        "d": 0b00001000,
        "e": 0b00010000,
        "f": 0b00100000,
        "g": 0b01000000,
    }

    led_on_time = 0.005

    def __init__(self):
        for pin in self.pins.values():
            GPIO.setup(pin, GPIO.OUT)
            GPIO.output(pin, GPIO.LOW)
        self.number = 0
        self.on = True
        self.show_thread = Thread(target=self.show)
        self.show_thread.start()

    def digit(self, digit):
        val = self.digitBitmap[digit]
        self.clear_pins()
        for k, v in self.masks.items():
            if val & v == v:
                GPIO.output(self.pins[k], GPIO.HIGH)

    def clear_pins(self):
        for k in self.masks.keys():
            if k in ["1", "2", "3", "4"]:
                    continue
            GPIO.output(self.pins[k], GPIO.LOW)


    def show(self):
        while True:
            GPIO.output(list(self.pins.values()), GPIO.LOW)
            GPIO.output(self.pins["1"], GPIO.HIGH)
            GPIO.output(self.pins["2"], GPIO.HIGH)
            GPIO.output(self.pins["3"], GPIO.HIGH)
            GPIO.output(self.pins["4"], GPIO.HIGH)

            if not self.on:
                continue

            self.digit(int(self.number / 1000))
            GPIO.output(self.pins["1"], GPIO.LOW if self.number > 999 else GPIO.HIGH)
            time.sleep(self.led_on_time)
            GPIO.output(self.pins["1"], GPIO.HIGH)

            self.digit(int((self.number % 1000) / 100))
            GPIO.output(self.pins["2"], GPIO.LOW if self.number > 99 else GPIO.HIGH)
            time.sleep(self.led_on_time)
            GPIO.output(self.pins["2"], GPIO.HIGH)

            self.digit(int((self.number % 100) / 10))
            GPIO.output(self.pins["3"], GPIO.LOW if self.number > 9 else GPIO.HIGH)
            time.sleep(self.led_on_time)
            GPIO.output(self.pins["3"], GPIO.HIGH)

            self.digit(int((self.number % 10) / 1))
            GPIO.output(self.pins["4"], GPIO.LOW if self.number >= 0 else GPIO.HIGH)
            time.sleep(self.led_on_time)
            GPIO.output(self.pins["4"], GPIO.HIGH)


display = Display()
