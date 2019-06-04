﻿* [ahoenle:](#ahoenle)
* [Generic C library for R3xx/ZFMxx/FPMxx/R551 fingerprint modules](#generic-c-library-for-r3xxzfmxxfpmxxr551-fingerprint-modules)

## ahoenle:

Original README below, this was added by ahoenle on 2019-04-19.




_Here begins the original README:_

## Generic C library for R3xx/ZFMxx/FPMxx/R551 fingerprint modules

To use it, the following interface needs to be provided to the library, which expects function pointers with these prototypes:

    /* to get the millisecond count since reset */
    uint32_t (*fpm_millis_func)(void);

    /* millisecond delays */
    void (*fpm_delay_func)(uint32_t interval);

    /* to read from the UART port connected to the module */
    uint16_t (*fpm_uart_read_func)(uint8_t * bytes, uint16_t len);

    /* to write to the UART port connected to the module */
    void (*fpm_uart_write_func)(uint8_t * bytes, uint16_t len);

    /* to get the current number of available bytes to be read */
    uint16_t (*fpm_uart_avail_func)(void);

Check out the examples for details.
