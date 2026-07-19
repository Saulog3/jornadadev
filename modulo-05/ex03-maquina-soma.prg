FUNCTION Main()

    LOCAL cInput := ""
    LOCAL nNum   := 0
    Local nTotal := 0
    Local nQtd   := 0

    QOut("==============MAQUINA DE SOMA===================")

    WHILE .T.

        ACCEPT "Digite um Valor para somar OU 0 para sair: " TO cInput
        QOut("")       
        nNum := Val(cInput)

        IF nNum == 0
            EXIT
        ENDIF
        
        nTotal += nNum
        nQtd ++

    ENDDO

    QOut("Quantidade de Numeros somados:.......", AllTrim(Str(nQtd)))
    QOut("Valor total da soma dos numeros: ....", AllTrim(Str(nTotal)))

RETURN NIL
