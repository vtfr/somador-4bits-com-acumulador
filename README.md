# Somador 4 Bits com Acumulador
Esse projeto foi criado para a disciplina de Concepção Estruturada de Circuitos
Integrados, ministrada pelo Prof. Antonio Carlos Cavalcanti, no período 2017.1, UFPB.

O Somador de 4 bits com Acumulador consiste em um Somador/Subtrator que
é capaz de realizar quatro operações: armazenar um valor no acumulador,
armazenar um valor invertido no acumulador, realizar uma soma de um valor
com o valor atual do acumulador e realizar uma subtração de um valor com o
valor atual do acumulador.

Uma vez o código em C mãos, através da ferramenta Genpat (pacote Alliance) é
possível gerar uma suite de testes para qualquer circuito que implemente essa
funcionalidade, servindo de Modelo de Ouro.

## Compilação da Suite de Testes
Uma vez no diretório raiz desse projeto, com a suite Alliance instalada
em sistemas baseados no Debian, execute o seguinte comando:

    $ make genpat

Também é possível gerar uma tabela de resultados humanamente legíveis usando
o comando

	$ make test
