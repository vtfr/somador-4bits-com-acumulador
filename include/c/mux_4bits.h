#ifndef MUX_4BITS_H
#define MUX_4BITS_H

/*
 * Mux de 4 bits
 * c == 0 => return a
 * c == 1 => return b
 */
int Mux4Bits(uint8_t c, uint8_t a, uint8_t b) {
	return (c & 0x1) == 0 ? (a & 0xF) : (b & 0xF);
}

#endif // MUX_4BITS_H
