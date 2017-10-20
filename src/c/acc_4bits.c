#include "genpat.h"

#include <util.h>
#include <acc_4bits.h>

#define DONT_CARE 255

static int current = 0;

int main(void) {
	DEF_GENPAT("acc_4bits");

	// Entrada
	DECLAR("A",   ":1", "B", IN,  "(3 downto 0)", "");
	DECLAR("S",   ":1", "B", OUT, "(3 downto 0)", "");
	DECLAR("Clk", ":1", "B", IN, "", "");

	// Misc
	DECLAR("vdd", ":1", "B", IN, "", "");
	DECLAR("vss", ":1", "B", IN, "", "");
	AFFECT("0", "vdd", "1");
	AFFECT("0", "vss", "0");

	/*
	 * Inicia os testes
	 */
	uint8_t acc = DONT_CARE;
	for (int a = 0; a < 16; a++)
	for (int c = 0; c <= 1; c++) {
		
		Acc4Bits(a, &acc, c, !c);

		AFFECT(IntToStr(current), "Clk", IntToStr(c));
		AFFECT(IntToStr(current), "A",   IntToStr(a));
		AFFECT(IntToStr(current), "S", 
			(acc == DONT_CARE ? "0b****" : IntToStr(acc)));

 		++current;
 	}

	SAV_GENPAT();

	return 0;
}
