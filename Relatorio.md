# Concepção Estruturada de Circuitos Integrados: Somador/Subtrator de 4 Bits com Acumulador
Aluno Victor Franco Vieira Lima, 2017.

## Modelo de Referência de Ouro

O Modelo de Referência de Ouro, do inglês *Golden Reference Model*, trata-se de um
modelo de referência em alto nível de um dado circuito, capaz de descrever seu
comportamento (isto é, suas saídas) em função as suas entradas. Esse modelo é
usado para produzir um vetor de casos de teste que mapeia todas as entradas
possíveis para todas as saídas possíveis, servindo de suite de testes para
determinar a corretude de qualquer circuito que resolver implementá-lo.

Neste trabalho fizemos um modelo em alto-nível para o circuito Somador/Subtrator de 4 Bits
com Acumulador, em C99. Uma vez esse modelo feito, usamos a ferramenta *Genpat*
(pacote [Alliance](https://soc-extras.lip6.fr/en/alliance-abstract-en/)) para gerar
a suite de testes.


## Diagrama do Somador/Subtrator de 4 Bits com Acumulador

![Diagrama](https://raw.githubusercontent.com/vtfr/somador-4bits-com-acumulador/master/schematic.png)

O circuito possui uma entrada de 4 bits chamada A e duas entradas de 1 bit cada
para os seletores de modo de operação, sel0 e sel1. O comportamento do circuito
em função desses seletores é:

| sel0 | sel1 | Resposta                         | Operação       |
|------|------|----------------------------------|----------------|
| 0    | 0    | Copia A para ACC                 | ACC <= A       |
| 0    | 1    | Soma A com ACC e grava em ACC    | ACC <= ACC + A |
| 1    | 0    | Copia Inv(A) para ACC            | ACC <= Inv(A)  |
| 1    | 1    | Subtrai A de ACC e grava em ACC  | ACC <= ACC - A |

Detalhe que o armazenamento em ACC só é realizado na subida de clock. Caso
seja feito alguma operação fora da subida, o resultado será retornado em S e Cout
mas não será armazenado em ACC.


## Documentação do Código

A Documentação do código está escrita no próprio código através de comentários
antes de cada operação importante. Para fins de conveniência os trechos mais
importantes de código foram colocados abaixo:


### Somador de 1 Bit

Primeiro comecei com o Somador de 1 Bit, que seria responsável por somar três
valores de um bit (A, B e Cin) e retornar dois valores de um bit (S e Cout).

```c
/*
 * Define a estrutura do resultado do Somador de 1 Bit
 */
typedef struct {
	uint8_t saida : 1;
	uint8_t cout  : 1;
} Resultado1Bit;

/*
 * Realiza a operação de soma de 1 bit
 */
Resultado1Bit Somador1Bit(uint8_t a, uint8_t b, uint8_t cin) {
	uint8_t soma = (a & 0x1) + (b & 0x1) + (cin & 0x1);

	Resultado1Bit resultado;
	resultado.saida = soma & 0x1;
	resultado.cout  = (soma & 0x2) >> 1;
	return resultado;
}
```
[Código do `somador1Bit.h`](somador1Bit.h)


### Somador de 4 Bits

Uma vez com o Somador de 1 Bit feito, a próxima etapa foi gerar um somador
que repetísse esse processo mais quatro vezes, para termos, então, um Somador de
4 bits.

```c
/*
 * Define a estrutura do resultado do Somador de 4 Bits
 */
typedef struct {
	union {
		/*
		 * O campo saída é acessível tanto pelo identificador 'saída' de 4 bits
		 * quanto pelos seus bits individualmente, sendo s1 o bit 0 e s4 o bit 3
		 */
		uint8_t saida : 4;
		struct {
			uint8_t s1 : 1;
			uint8_t s2 : 1;
			uint8_t s3 : 1;
			uint8_t s4 : 1;
		};
	};
	uint8_t cout : 1;
} Resultado4Bits;

/*
 * Calcula os resultados das operações com somador 1 bit para cada um dos
 * bits da entrada de 4 bits, juntas ao cin o somador anterior
 */
Resultado4Bits Somador4Bits(uint8_t a, uint8_t b, uint8_t cin) {
	Resultado1Bit soma1 = Somador1Bit((a >> 0) & 0x1, (b >> 0) & 0x1, cin);
	Resultado1Bit soma2 = Somador1Bit((a >> 1) & 0x1, (b >> 1) & 0x1, soma1.cout);
	Resultado1Bit soma3 = Somador1Bit((a >> 2) & 0x1, (b >> 2) & 0x1, soma2.cout);
	Resultado1Bit soma4 = Somador1Bit((a >> 3) & 0x1, (b >> 3) & 0x1, soma3.cout);

	Resultado4Bits resultado;
	resultado.cout = soma4.cout;
	resultado.s1 = soma1.saida;
	resultado.s2 = soma2.saida;
	resultado.s3 = soma3.saida;
	resultado.s4 = soma4.saida;
	return resultado;
}
```
[Código do `somador4Bits.h`](somador4Bits.h)


### Somador de 4 Bits com Acumulador

Agora com o Somador de 4 Bits pronto, tudo que foi feito foi implementar um
acumulador que dependesse de um clock `clk` para operar.

```c
/*
 * Realiza uma operação de 4 bits usando um valorAnterior e um novo valor,
 * usando o código e clock atual e anterior
 */
Resultado4Bits Somador4BitsAcc(uint8_t codigo, uint8_t* valorAcc,
	uint8_t valor, uint8_t clk, uint8_t aclk) {
	/* Certifica que os valores precisam estar em 4 bits */
	*valorAcc &= 0xF;
	valor &= 0xF;

	const int sel0 = (codigo >> 0) & 0x1;
	const int sel1 = (codigo >> 1) & 0x1;

	/* Caso o sel0 seja 1, inverte a entrada (MUX0) */
	const uint8_t resultadoMux0 = sel0 ? Inversor(valor) : valor;

	/* Realiza a soma do valor com o valor acumulado */
	const Resultado4Bits somador = Somador4Bits(*valorAcc, resultadoMux0, sel0);

	const uint8_t resultadoMux1 = sel1 ? somador.saida : resultadoMux0;

	/* Caso o clock seja de subida e seja diferente do anterior, atualiza
	   o valor do acumulador */
	if (clk == 1 && clk != aclk) {
		*valorAcc = resultadoMux1 ; /* MUX1 */
	}

	Resultado4Bits resultado;
	resultado.saida = resultadoMux1;
	resultado.cout = somador.cout;
	return resultado;
}
```
[Código do `somador4BitsAcc.h`](somador4BitsAcc.h)


### Teste da lógica

O teste da lógica está no arquivo [`test.c`](test.c), que itera exaustivamente
as entradas e gera uma tabela das suas respectivas saídas na saída padrão.

```c
/* Escreve o header */
printf(...);

/* Itera exaustivamente as entradas */
for (int c = 0; c < 4; c++)
for (int a = 0; a < 16; a++)
for (int clk = 0; clk <= 1; clk++) {
    /* Calcula o resultado */
    Resultado4Bits res = Somador4BitsAcc(c, &acc, a, clk, !clk);

    /* Escreve o resultado na tela */
    printf(...);
}
```

Uma vez com o código em mãos, para executar os testes de lógica basta executar
`make test` no diretório raiz do projeto.


### Genpat

Por fim tempos o arquivo [`genpat.c`](genpat.c), que gera as tabelas-verdade
no formato [pat](https://linux.die.net/man/5/pat).

O uso da ferramente Genpat é similar ao que foi mostrado anteriormente, no
teste da lógica, onde, ao invés de imprimir o resultado usando printf, usaremos
as funções disponibilizadas pela ferramenta para imprimir o resultado.

No nosso programa usamos as seguintes funções da ferramenta:

* **DEF_GENPAT(nome)**
  Define o nome do arquivo de saída gerado pelo genpat
* **DECLAR(ident, spc, form, mode, size, opt)**
  Declara as entradas esaídas para o circuito usando os seguintes parâmetros:
  * **ident**: Identificador do sinal
  * **spc**: Espaçamento entre cada coluna de sinal
  * **mode**: Tipo de sinal (entrada `IN` ou saída `OUT`)
  * **size**: Largura do barramento
  * **opt**: Opção extra (não utilizado)
* **AFFECT(date, ident, value)**
  Altera o estado de um determinado sinal. O estado é mantido até o final da
  execução ou até ser sobreescrito por outra chamada do AFFECT. Parâmetros:
  * **date**: Tempo relativo ou absoluto que indica quando o sinal será modificado
  * **ident**: Identificador do sinal
  * **value**: Novo valor do sinal
* **SAV_GENPAT()**
  Salva o arquivo pat.

Uma vez com o código em mãos, para compilar o arquivo pat basta executar
`make genpat` no diretório raiz do projeto.
