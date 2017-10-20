#ifndef INV_4BITS_H
#define INV_4BITS_H

/*
 * Inverte um valor
 */
uint8_t Inv4Bits(uint8_t valor) {
	return ~valor & 0xF;
}

#endif // INV_4BITS_H
