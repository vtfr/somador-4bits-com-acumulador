#include "genpat.h"

#include <util.h>
#include <somador_1bit.h>

static int current = 0;

int main(void) {
	DEF_GENPAT("somador_1bit");

	// Entrada
	DECLAR("A",    ":1", "B", IN, "", "");
	DECLAR("B",    ":1", "B", IN, "", "");
	DECLAR("Cin",  ":1", "B", IN, "", "");

	// Saídas
	DECLAR("S",    ":1", "B", OUT, "", "");
	DECLAR("Cout", ":1", "B", OUT, "", "");

	// Misc
	DECLAR("vdd", ":1", "B", IN, "", "");
	DECLAR("vss", ":1", "B", IN, "", "");
	AFFECT("0", "vdd", "1");
	AFFECT("0", "vss", "0");

	/*
	 * Inicia os testes
	 */
	for (int a = 0; a <= 1; a++)
 	for (int b = 0; b <= 1; b++)
 	for (int c = 0; c <= 1; c++) {
 		Resultado1Bit res = Somador1Bit(a, b, c);

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
