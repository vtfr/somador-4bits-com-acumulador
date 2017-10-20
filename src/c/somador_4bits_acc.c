#include "genpat.h"

#include <util.h>
#include <somador_4bits_acc.h>

static int current = 0;

void GerarGenpatParaCodigo(char* label, int code) {
	int labelUsado = 0;
	
	uint8_t acc = 0;
	for (int a = 0; a < 16; a++)
	for (int clk = 1; clk > 0; clk--) {
		/* Calcula o resultado do somador de 4 bits com acumulador */
		Resultado4Bits res = Somador4BitsAcc(code, &acc, a, clk, !clk);

		AFFECT(IntToStr(current), "Clk",  IntToStr(clk));
		AFFECT(IntToStr(current), "Sel0", IntToStr((code >> 0) & 0x1));
		AFFECT(IntToStr(current), "Sel1", IntToStr((code >> 1) & 0x1));
		AFFECT(IntToStr(current), "Cout", IntToStr(res.cout));
		AFFECT(IntToStr(current), "S",    IntToStr(res.saida));
		AFFECT(IntToStr(current), "A",    IntToStr(a));

		if (!labelUsado) {
			LABEL(label);
			labelUsado++;
		}

		++current;
	}
}

int main(void) {
	DEF_GENPAT("somador_4bits_acc");

	// Entrada
	DECLAR("Clk",  ":1", "B", IN, "", "");
	DECLAR("Sel0", ":1", "B", IN, "", "");
	DECLAR("Sel1", ":1", "B", IN, "", "");
	DECLAR("A",    ":1", "B", IN, "3 down to 0", "");

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
	GerarGenpatParaCodigo("Copia_A", 0);
	GerarGenpatParaCodigo("Copia_Inv_A", 1);
	GerarGenpatParaCodigo("Soma_ACC_Com_A", 2);
	GerarGenpatParaCodigo("Subtrai_ACC_Com_A", 3);

	SAV_GENPAT();

	return 0;
}
