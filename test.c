#include <stdio.h>
#include <stdint.h>
#include "somador4BitsAcc.h"

void PrintarTestesSomador4BitsAcc() {
	uint8_t acc = 0;
	int i = 0;

	printf("I\taclk\tclk\tcode\tA\tS\tCout\tACC\n");

	for (int c = 0; c < 4; c++)
	for (int a = 0; a < 16; a++)
	for (int clk = 0; clk <= 1; clk++){
		Resultado4Bits res = Somador4BitsAcc(c, &acc, a, clk, !clk);

		/* Caso a saída seja negativa, realiza signextend para inteiro de
		 * 32 bits */
		int s = res.saida;
		if (s & 0x8) {
			s = 0xFFFFFFF8 | (s & 0x7);
		}

		printf("%d\t%d\t%d\t%d%d\t%d%d%d%d\t%d\t%d\t%d%d%d%d\n",
			i++, (!clk & 0x1), clk,
			(c >> 1) & 0x1,
			(c >> 0) & 0x1,
			(a >> 3) & 0x1,
			(a >> 2) & 0x1,
			(a >> 1) & 0x1,
			(a >> 0) & 0x1,
			s,
			res.cout,
			(acc >> 3) & 0x1,
			(acc >> 2) & 0x1,
			(acc >> 1) & 0x1,
			(acc >> 0) & 0x1);
	}
}

int main(void) {
	PrintarTestesSomador4BitsAcc();
	return 0;
}
