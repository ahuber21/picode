/*
 * (c) 2020 Andreas Hoenle
 *
 * Driver for the HX711 load cells interfacing an Arduino (mega)
 */

// https://github.com/olkal/HX711_ADC
#include <HX711_ADC.h>

HX711_ADC LoadCell(4, 5); // dt pin, sck pin

void setup()
{
    LoadCell.begin();             // start connection to HX711
    LoadCell.start(2000);         // load cells gets 2000ms of time to stabilize
    LoadCell.setCalFactor(999.0); // calibration factor for load cell => strongly dependent on your individual setup
    Serial.begin(9600);
    Serial.println("Setup complete.");
}

void loop()
{
    LoadCell.update();            // retrieves data from the load cell
    float i = LoadCell.getData(); // get output value
    Serial.println(i);
}