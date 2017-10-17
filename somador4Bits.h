#ifndef SOMADOR_4BITS_H
#define SOMADOR_4BITS_H

#include <stdint.h>
#include "somador1Bit.h"

/*
 * Define a estrutura do resultado do Somador de 4 Bits
 */
typedef struct {
	union {
		/*
		 * O campo saída é acessível tanto pelo identificador 'saída' de 4 bits
		 * quanto pelos seus bits individualmente, sendo s1 o bit 0 e s4 o bit 3
		 */
		uint8_t saida : 4;
		struct {
			uint8_t s1 : 1;
			uint8_t s2 : 1;
			uint8_t s3 : 1;
			uint8_t s4 : 1;
		};
	};
	uint8_t cout : 1;
} Resultado4Bits;

/*
 * Calcula os resultados das operações com somador 1 bit para cada um dos
 * bits da entrada de 4 bits, juntas ao cin o somador anterior
 */
Resultado4Bits Somador4Bits(uint8_t a, uint8_t b, uint8_t cin) {
	Resultado1Bit soma1 = Somador1Bit((a >> 0) & 0x1, (b >> 0) & 0x1, cin);
	Resultado1Bit soma2 = Somador1Bit((a >> 1) & 0x1, (b >> 1) & 0x1, soma1.cout);
	Resultado1Bit soma3 = Somador1Bit((a >> 2) & 0x1, (b >> 2) & 0x1, soma2.cout);
	Resultado1Bit soma4 = Somador1Bit((a >> 3) & 0x1, (b >> 3) & 0x1, soma3.cout);

	Resultado4Bits resultado;
	resultado.cout = soma4.cout;
	resultado.s1 = soma1.saida;
	resultado.s2 = soma2.saida;
	resultado.s3 = soma3.saida;
	resultado.s4 = soma4.saida;
	return resultado;
}

void PrintResultado4Bits(Resultado4Bits resultado) {
	printf("Resultado4Bits { saida: 0x%02x, cout: %d }\n",
		resultado.saida,
		resultado.cout);
}

#endif // SOMADOR_4BITS_H
