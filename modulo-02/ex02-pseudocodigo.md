## a. Retangulo:

inicio

    nBase: numerico
    nAltura: numerico
    nArea: numerico

    leia nBase
    leia nAltura

    nArea <-- nBase * nAltura

    escreva "A área do retangulo é: ", nArea

fim

## b. Par - Ímpar:

Inicio

    nNumero: numerico

    leia nNumero

    se (nNumero % 2 = 0) entao
        escreva "O número ", nNumero, " é par."
    senao
        escreva "O número ", nNumero, " é ímpar."
    fimse

fim

## c. Maior de 3 numeros:

inicio

    n1: numerico
    n2: numerico
    n3: numerico
    nMaior: numerico

    leia n1
    leia n2
    leia n3

    nMaior <-- n1

    se (n2 > nMaior) entao
        nMaior <-- n2
    fimse

    se (n3 > nMaior) entao
        nMaior <-- n3
    fimse

    escreva "O maior número é: ", nMaior

fim

