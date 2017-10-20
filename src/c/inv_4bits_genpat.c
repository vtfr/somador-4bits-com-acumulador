#include "genpat.h"

#include <util.h>
#include <inv_4bits.h>

static int current = 0;

int main(void) {
	DEF_GENPAT("inv_4bits");

	// Entrada
	DECLAR("A",    ":1", "B", IN,  "(3 downto 0)", "");
	DECLAR("S",    ":1", "B", OUT, "(3 downto 0)", "");

	// Misc
	DECLAR("vdd", ":1", "B", IN, "", "");
	DECLAR("vss", ":1", "B", IN, "", "");
	AFFECT("0", "vdd", "1");
	AFFECT("0", "vss", "0");

	/*
	 * Inicia os testes
	 */
	for (int a = 0; a < 16; a++) {
		AFFECT(IntToStr(current), "A", IntToStr(a));
		AFFECT(IntToStr(current), "S", IntToStr(Inv4Bits(a)));

 		++current;
 	}

	SAV_GENPAT();

	return 0;
}
