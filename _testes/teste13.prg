FUNCTION main()

    LOCAL nTotal := 0
    LOCAL nI := 1, nNum, nQtd

    ACCEPT "Quantos numeros?: " TO nQtd
    nQtd := Val(nQtd)

    WHILE nI <= nQtd
        ACCEPT "Numero: " TO nNum
        nTotal += Val(nNum)
        nI ++

    ENDDO
    QOut("Soma " + Str(nTotal))


RETURN NIL
