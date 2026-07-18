#define REAJUSTE_15 1.15
#define REAJUSTE_12 1.12
#define REAJUSTE_08 1.08
#define REAJUSTE_05 1.05


FUNCTION Main()

    LOCAL nFator            := 0
    LOCAL cInput            := ""
    LOCAL nSalario          := 0
    LOCAL nNovoSalario      := 0
    LOCAL cFatorFormatado   := ""

    ACCEPT "Valor do salario: " TO cInput

    nSalario := Val(cInput)

    IF nSalario <= 1000
        nFator := REAJUSTE_15

    ELSEIF nSalario <= 2000
        nFator := REAJUSTE_12

    ELSEIF nSalario <= 4000
        nFator := REAJUSTE_08

    ELSE
        nFator := REAJUSTE_05

    ENDIF

    nNovoSalario := nSalario * nFator
    cFatorFormatado := (nFator - 1) * 100

    QOut("Salario:................R$", AllTrim(Transform(nSalario, "999,999.99")))
    QOut("Percentual aplicado:..........", AllTrim(Str(cFatorFormatado)), "%")
    QOut("Salario com Reajuste:...R$", AllTrim(Transform(nNovoSalario, "999,999.99")))

RETURN NIL
