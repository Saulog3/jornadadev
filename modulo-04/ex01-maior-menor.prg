FUNCTION Main()

    LOCAL cNumero1 := ""
    LOCAL cNumero2 := ""
    LOCAL nNumero1 := 0
    LOCAL nNumero2 := 0
    LOCAL nMaior   := 0
    LOCAL nMenor   := 0
    
    ACCEPT "Primeiro Numero: " TO cNumero1
    ACCEPT "Segundo Numero: "  TO cNumero2

    nNumero1 := Val(cNumero1)
    nNumero2 := Val(cNumero2)

    IF nNumero1 == nNumero2
        QOut("Numeros iguais")
    ELSE
        IF nNumero1 > nNumero2
            nMaior := nNumero1
            nMenor := nNumero2
        ELSE
            nMaior := nNumero2
            nMenor := nNumero1
        ENDIF

        QOut("Numero maior: " + AllTrim(Str(nMaior)))
        QOut("Numero menor: " + AllTrim(Str(nMenor))) 
    ENDIF
RETURN NIL
