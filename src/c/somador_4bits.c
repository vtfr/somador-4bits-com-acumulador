#include "genpat.h"

#include <util.h>
#include <somador_4bits.h>

static int current = 0;

int main(void) {
	DEF_GENPAT("somador_4bits");

	// Entrada
	DECLAR("A",    ":1", "B", IN, "3 down to 0", "");
	DECLAR("B",    ":1", "B", IN, "3 down to 0", "");
	DECLAR("Cin",  ":1", "B", IN, "", "");

	// Saídas
	DECLAR("S",    ":1", "B", OUT, "3 down to 0", "");
	DECLAR("Cout", ":1", "B", OUT, "", "");

	// Misc
	DECLAR("vdd", ":1", "B", IN, "", "");
	DECLAR("vss", ":1", "B", IN, "", "");
	AFFECT("0", "vdd", "1");
	AFFECT("0", "vss", "0");

	/*
	 * Inicia os testes
	 */
	for (int a = 0; a < 16; a++)
 	for (int b = 0; b < 16; b++)
 	for (int c = 0; c <= 1; c++) {
 		Resultado4Bits res = Somador4Bits(a, b, c);

		AFFECT(IntToStr(current), "A",    IntToStr(a));
		AFFECT(IntToStr(current), "B",    IntToStr(b));
 		AFFECT(IntToStr(current), "Cin",  IntToStr(c));
		AFFECT(IntToStr(current), "S",    IntToStr(res.saida));
		AFFECT(IntToStr(current), "Cout", IntToStr(res.cout));

 		++current;
 	}

	SAV_GENPAT();

	return 0;
}
