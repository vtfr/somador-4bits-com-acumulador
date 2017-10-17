#ifndef SOMADOR_4BITS_ACC_H
#define SOMADOR_4BITS_ACC_H

#include "somador4Bits.h"
#include "util.h"

/*
 * Realiza uma operação de 4 bits usando um valorAnterior e um novo valor,
 * usando o código e clock atual e anterior
 */
Resultado4Bits Somador4BitsAcc(uint8_t codigo, uint8_t* valorAcc,
	uint8_t valor, uint8_t clk, uint8_t aclk) {
	/* Certifica que os valores precisam estar em 4 bits */
	*valorAcc &= 0xF;
	valor &= 0xF;

	const int sel0 = (codigo >> 0) & 0x1;
	const int sel1 = (codigo >> 1) & 0x1;

	/* Caso o sel0 seja 1, inverte a entrada (MUX0) */
	const uint8_t resultadoMux0 = sel0 ? Inversor(valor) : valor;

	/* Realiza a soma do valor com o valor acumulado */
	const Resultado4Bits somador = Somador4Bits(*valorAcc, resultadoMux0, sel0);

	const uint8_t resultadoMux1 = sel1 ? somador.saida : resultadoMux0;

	/* Caso o clock seja de subida e seja diferente do anterior, atualiza
	   o valor do acumulador */
	if (clk == 1 && clk != aclk) {
		*valorAcc = resultadoMux1 ; /* MUX1 */
	}

	Resultado4Bits resultado;
	resultado.saida = resultadoMux1;
	resultado.cout = somador.cout;
	return resultado;
}

#endif // SOMADOR_4BITS_ACC_H
