#ifndef ACC_4BITS_H
#define ACC_4BITS_H

#include <util.h>

/*
 * Realiza uma operação de 4 bits usando um valorAnterior e um novo valor,
 * usando o código e clock atual e anterior
 */
void Acc4Bits(uint8_t a, uint8_t* valor, uint8_t clk, uint8_t aclk) {
	/* Caso o clock seja de subida e seja diferente do anterior, atualiza
	   o valor do acumulador */
	if (clk == 1 && clk != aclk) {
		*valor = (a & 0xF);
	}
}

#endif // ACC_4BITS_H
