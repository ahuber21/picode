#include <Wire.h> // Enable this line if using Arduino Uno, Mega, etc.
#include <Adafruit_GFX.h>
#include "Adafruit_LEDBackpack.h"

uint8_t idle_counter = 0;
Adafruit_7segment display = Adafruit_7segment();

void setup() {
  Serial.begin(9600);
  Serial.println("Booting up 7 segment display test");
  display.begin(0x70);  // takes I2C address as argument, default 0x70, can be changed
  display_init();
}


void display_error() {
  display.writeDigitRaw(0, 0x79);
  display.writeDigitRaw(1, 0x50);
  display.writeDigitRaw(3, 0x50);

  display.writeDisplay();

  delay(1000);

  display.clear();
  display.writeDisplay();
}

void display_init() {
  display.writeDigitRaw(0, 0x30);
  display.writeDigitRaw(1, 0x54);
  display.writeDigitRaw(3, 0x10);
  display.writeDigitRaw(4, 0x70);

  display.writeDisplay();

  delay(1000);
}


/* advance the idle cursor by one position */
void idle() {
  // the order in which we go around the display
  display.clear();
  switch (idle_counter) {
    case 0:
      display.writeDigitRaw(0, 0x20);
      break;
    case 1:
      display.writeDigitRaw(0, 0x10);
      break;
    case 2:
      display.writeDigitRaw(0, 0x8);
      break;
    case 3:
      display.writeDigitRaw(1, 0x8);
      break;
    case 4:
      display.writeDigitRaw(3, 0x8);
      break;
    case 5:
      display.writeDigitRaw(4, 0x8);
      break;
    case 6:
      display.writeDigitRaw(4, 0x2);
      break;
    case 7:
      display.writeDigitRaw(4, 0x1);
      break;
    case 8:
      display.writeDigitRaw(3, 0x1);
      break;
    case 9:
      display.writeDigitRaw(1, 0x1);
      break;
    case 10:
      display.writeDigitRaw(0, 0x1);
      break;
    default:
      display_error();
      break;
  }

  display.writeDisplay();

  idle_counter++;
  idle_counter %= 11;
}

void test() {
  display.clear();
  display.writeDigitRaw(0, 0x1);
  display.writeDisplay();
}

void loop() {
  // idle();
  test();
  delay(100);
}
