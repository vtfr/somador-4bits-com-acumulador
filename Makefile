ALLIANCE_INCLUDE_PATH=/usr/include/alliance
ALLIANCE_LIB_PATH=/usr/lib/alliance
ALLIANCE_LIBS=-lPgn -lPat -lMut -lRcn

# Todos os arquivos genpat
GENPAT_FILES=$(wildcard src/c/*.c)
GENPAT_BINARIES=$(notdir $(basename $(GENPAT_FILES)))

# Todos os arquivo VHDL
VHDL_FILES=$(notdir $(basename $(wildcard src/vhdl/*.vhdl)))

# Compila os genpats
pat: clean $(GENPAT_BINARIES)

# Limpa os arquivos residuais
clean:
	rm -f test/* work/*

# Entra no diretório 'test', compila os arquivos genpat e escreve seus
# arquivos
$(GENPAT_BINARIES):
	cd test \
	&& $(CC) -std=c99 -o $@ ../src/c/$@.c \
		-I$(ALLIANCE_INCLUDE_PATH) \
		-L$(ALLIANCE_LIB_PATH) \
		-I../include/c \
		$(ALLIANCE_LIBS) \
	&& LD_LIBRARY_PATH=$(LD_LIBRARY_PATH):$(ALLIANCE_LIB_PATH) \
		./$@ \
	&& rm $@
