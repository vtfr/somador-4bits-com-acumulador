#ifndef UTIL_H
#define UTIL_H

/*
 * Inverte um valor
 */
uint8_t Inversor(uint8_t valor) {
	return ~valor & 0xF;
}

#endif // UTIL_H
