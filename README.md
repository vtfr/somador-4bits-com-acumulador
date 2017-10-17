# Concepção Estruturada de Circuitos Integrados: Somador/Subtrator de 4 Bits com Acumulador
Esse projeto foi criado para a disciplina de Concepção Estruturada de Circuitos
Integrados, ministrada pelo Prof. Antonio Carlos Cavalcanti, no período 2017.1, UFPB,
com o objetivo de gerar um modelo de referência para um circuito capaz de somar,
subtrair, armazenar e inverter uma determinada entrada de 4 Bits, seguindo esse comportamento:


| sel0 | sel1 | Resposta                         | Operação       |
|------|------|----------------------------------|----------------|
| 0    | 0    | Copia A para ACC                 | ACC <= A       |
| 0    | 1    | Soma A com ACC e grava em ACC    | ACC <= ACC + A |
| 1    | 0    | Copia Inv(A) para ACC            | ACC <= Inv(A)  |
| 1    | 1    | Subtrai A de ACC e grava em ACC  | ACC <= ACC - A |

## Compilação da Suite de Testes
Uma vez no diretório raiz desse projeto, com a suite Alliance instalada
em um sistema baseado no Debian, execute o seguinte comando:

    $ make genpat

## Relatório
O Relatório pode ser acessado no arquivo [`Relatorio.md`](Relatorio.md).
