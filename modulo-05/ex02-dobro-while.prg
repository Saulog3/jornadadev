FUNCTION Main()

    LOCAL cInput := ""
    LOCAL nNum   := 0
    Local nDobro := 0

    WHILE .T.
        
        ACCEPT "Digite um Valor Inteiro OU 0 para sair: " TO cInput
        
        nNum := Val(cInput)

        IF nNum <= 0
            QOut("Saiu")
            EXIT

        ELSE
            nDobro := nNum * 2
            QOut("O dobro de ", nNum,": ", AllTrim(Str(nDobro)))

        ENDIF
    ENDDO


RETURN NIL