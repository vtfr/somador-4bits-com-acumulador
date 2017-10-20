#ifndef SOMADOR_1BIT_H
#define SOMADOR_1BIT_H

#include <stdint.h>

/*
 * Define a estrutura do resultado do Somador de 1 Bit
 */
typedef struct {
	uint8_t saida : 1;
	uint8_t cout  : 1;
} Resultado1Bit;

/*
 * Realiza a operação de soma de 1 bit
 */
Resultado1Bit Somador1Bit(uint8_t a, uint8_t b, uint8_t cin) {
	uint8_t soma = (a & 0x1) + (b & 0x1) + (cin & 0x1);

	Resultado1Bit resultado;
	resultado.saida = soma & 0x1;
	resultado.cout  = (soma & 0x2) >> 1;
	return resultado;
}

#endif // SOMADOR_1BIT_H
