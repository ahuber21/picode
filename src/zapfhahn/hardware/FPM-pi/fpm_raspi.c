#include <stdint.h>
#include <stdio.h>
#include <wiringPi.h>
#include <wiringSerial.h>

#include "fpm_raspi.h"
#include "fpm.h"

static int fd = 0;

fpm_millis_func _millis() {
    &millis;
}

fpm_delay_func _delay(uint32_t interval) {
    return &delay;
}

fpm_uart_read_func _uart_read(uint8_t * bytes, uint16_t len) {
    return &read_serial;
}

fpm_uart_write_func _uart_write(uint8_t * bytes, uint16_t len) {
    return &write_serial;
}

fpm_uart_avail_func _uart_avail(void) {
    return &serial_avail;
}

uint16_t read_serial(uint8_t* bytes, uint16_t len) {
    uint16_t bytes_read = 0;
    for (uint16_t i = 0; i < len; ++i) {
        // serialDataAvail will block up to 10s
        // and return -1 when no data is available
        if (serialDataAvail(fd) < 0) {
            break;
        }
        bytes[i] = serialGetchar(fd);
        ++bytes_read;
    }
    return bytes_read;
}

void write_serial(uint8_t* bytes, uint16_t len) {
    for (uint16_t i = 0; i < len; ++i) {
        serialPuts(fd, &(bytes[i]));
    }
}

uint16_t serial_avail() {
    int bytes_avail = serialDataAvail(fd);
    if (bytes_avail < 0) {
        return 0;
    } else {
        return bytes_avail;
    }
}

int main() {
    char* device = "/dev/ttyAMA0";
    fd = serialOpen(device, 115200);
    if (fd < 0) {
        printf("Unable to open %s, fd is %d\n", device, fd);
        return 1;
    }
    printf("Opened %s\n", device);

    // uint8_t buf[12] = "Hello World!";
    // write_serial(buf, 12);


    FPM finger;
    FPM_System_Params params;

	finger.address = 0xFFFFFFFF;
	finger.password = 0;
	finger.avail_func = serial_avail;
	finger.read_func = read_serial;
	finger.write_func = write_serial;

    if (fpm_begin(&finger, millis, delay)) {
		fpm_read_params(&finger, &params);
		printf("Found fingerprint sensor!\r\n");
		printf("Capacity: %d\r\n", params.capacity);
		printf("Packet length: %d\r\n", fpm_packet_lengths[params.packet_len]);
	}
	else {
		printf("Did not find fingerprint sensor :(\r\n");
	}
    serialClose(fd);
}