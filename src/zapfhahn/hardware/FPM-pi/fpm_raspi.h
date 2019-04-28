
// read `len` bytes from current serial fd to `bytes`
uint16_t read_serial(uint8_t* bytes, uint16_t len);
// write `len` bytes from `bytes` to current serial fd
void write_serial(uint8_t* bytes, uint16_t len);
// indicate how many bytes are available to read
uint16_t serial_avail();