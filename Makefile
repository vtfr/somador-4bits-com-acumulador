ALLIANCE_INCLUDE_PATH=/usr/include/alliance
ALLIANCE_LIB_PATH=/usr/lib/alliance
ALLIANCE_LIBS=-lPgn -lPat -lMut -lRcn

# Testa e gera o genpat
all: test genpat

# Testa o somador
test: test.c
	$(CC) $^ -std=c99 -o test \
	&& ./test \
	&& rm test

# Limpa os arquivos residuais
clean:
	rm 4bit-adder-acc-genpat.pat

# Compila o genpat e escreve seu arquivo
genpat: genpat.c
	$(CC) -std=c99 -o genpat $^ \
		-I$(ALLIANCE_INCLUDE_PATH) \
		-L$(ALLIANCE_LIB_PATH) \
		$(ALLIANCE_LIBS) \
	&& LD_LIBRARY_PATH=$(LD_LIBRARY_PATH):$(ALLIANCE_LIB_PATH) \
		./genpat \
	&& rm genpat
