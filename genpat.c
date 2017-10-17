#include <stdio.h>
#include <stdlib.h>
#include "genpat.h"

#include "somador4BitsAcc.h"

char* IntToStr(int v) {
	char* buffer = (char *)malloc(32);
	sprintf(buffer, "%i", v);

	return buffer;
}

void GerarGenpat() {
	DEF_GENPAT("4bit-adder-acc-genpat");

	DECLAR("clk", ":2", "B", IN, "", "");
	DECLAR("sel0", ":2", "B", IN, "", "");
	DECLAR("sel1", ":2", "B", IN, "", "");
	DECLAR("A", ":2", "B", IN, "3 down to 0", "");
	DECLAR("S", ":2", "B", OUT, "3 down to 0", "");
	DECLAR("Cout", ":2", "B", OUT, "", "");
	DECLAR("ACC", ":2", "B", OUT, "3 down to 0", "");
	DECLAR("vdd", ":2", "B", IN, "", "");
	DECLAR("vss", ":2", "B", IN, "", "");

	AFFECT("0", "vdd", "1");
	AFFECT()"0", "vss", "0");

	/* Começa a iterar as entradas */
	int current = 0;
	for (int code = 0; code < 4; code++)
	for (int acc = 0; acc < 16; acc++)
	for (int a = 0; a < 16; a++)
	for (int clk = 0; clk <= 1; clk++) {
		uint8_t accCopia = acc;

		/* Calcula o resultado do somador de 4 bits com acumulador */
		Resultado4Bits res = Somador4BitsAcc(code, &accCopia, a, clk, !clk);

		AFFECT(IntToStr(current), "clk", IntToStr(clk));
		AFFECT(IntToStr(current), "sel0", IntToStr((code >> 0) & 0x1));
		AFFECT(IntToStr(current), "sel1", IntToStr((code >> 1) & 0x1));
		AFFECT(IntToStr(current), "Cout", IntToStr(res.cout));
		AFFECT(IntToStr(current), "S", IntToStr(res.saida));
		AFFECT(IntToStr(current), "A", IntToStr(a));
	 	AFFECT(IntToStr(current), "ACC", IntToStr(accCopia));

		switch (code) {
		case 0: LABEL("Copy_A"); break;
		case 1: LABEL("Copy_Not_A"); break;
		case 2: LABEL("Add_A"); break;
		case 3: LABEL("Sub_A"); break;
		}

		++current;
	}

	SAV_GENPAT();
}

int main(void) {
	GerarGenpat();
	return 0;
}
