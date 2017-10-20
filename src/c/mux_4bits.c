#include "genpat.h"

#include <util.h>
#include <mux_4bits.h>

static int current = 0;

int main(void) {
	DEF_GENPAT("mux_4bits");

	// Entrada
	DECLAR("A",    ":1", "B", IN,  "(3 downto 0)", "");
	DECLAR("B",    ":1", "B", IN,  "(3 downto 0)", "");
	DECLAR("Ctrl", ":1", "B", IN,  "", "");
	DECLAR("S",    ":1", "B", OUT, "(3 downto 0)", "");

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
 		int res = Mux4Bits(c, a, b);

		AFFECT(IntToStr(current), "A",    IntToStr(a));
		AFFECT(IntToStr(current), "B",    IntToStr(b));
 		AFFECT(IntToStr(current), "Ctrl", IntToStr(c));
		AFFECT(IntToStr(current), "S",    IntToStr(res));

 		++current;
 	}

	SAV_GENPAT();

	return 0;
}
