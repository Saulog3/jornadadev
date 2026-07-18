#define REAJUSTE_1 1.15
#define REAJUSTE_2 1.12
#define REAJUSTE_3 1.08
#define REAJUSTE_4 1.05


FUNCTION Main()

    LOCAL nFator            := 0
    LOCAL cInput            := ""
    LOCAL nSalario          := 0
    LOCAL nNovoSalario      := 0
    LOCAL cFatorFormatado   := ""

    ACCEPT "Valor do salario: " TO cInput

    nSalario := Val(cInput)

    IF nSalario <= 1000
        nFator := REAJUSTE_1

    ELSEIF nSalario <= 2000
        nFator := REAJUSTE_2

    ELSEIF nSalario <= 4000
        nFator := REAJUSTE_3

    ELSE
        nFator := REAJUSTE_4

    ENDIF

    nNovoSalario := nSalario * nFator
    cFatorFormatado := (nFator - 1) * 100

    QOut("Salario:................R$", AllTrim(Transform(nSalario, "999,999.99")))
    QOut("Percentual aplicado:..........", AllTrim(Str(cFatorFormatado)), "%")
    QOut("Salario com Reajuste:...R$", AllTrim(Transform(nNovoSalario, "999,999.99")))

RETURN NIL
