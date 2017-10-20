ALLIANCE_INCLUDE_PATH=/usr/include/alliance
ALLIANCE_LIB_PATH=/usr/lib/alliance
ALLIANCE_LIBS=-lPgn -lPat -lMut -lRcn

# Nomes dos arquivos c, sem diretório
C_FILENAMES=$(notdir $(wildcard src/c/*.c))
# Nome dos arquivos pat, sem diretório
PAT_FILENAMES=$(C_FILENAMES:.c=.pat)

# Todos os arquivo VHDL
VHDL_FILENAMES=$(notdir $(basename $(wildcard src/vhdl/*.vhdl)))

# Limpa os arquivos residuais
clean:
	rm -f test/* work/*

# Testa os genpats
test: genpat

# Compila os genpats
genpat: clean $(PAT_FILENAMES)

# Cria os arquivos pat com base nos arquivos C
%.pat: src/c/%.c
	$(CC) -std=c99 -o test/$(notdir $(basename $<)) $< \
		-I$(ALLIANCE_INCLUDE_PATH) \
		-L$(ALLIANCE_LIB_PATH) \
		-Iinclude/c \
		$(ALLIANCE_LIBS) \
	&& cd test \
	&& LD_LIBRARY_PATH=$(LD_LIBRARY_PATH):$(ALLIANCE_LIB_PATH) \
		./$(notdir $(basename $<)) \
	&& rm $(notdir $(basename $<))
