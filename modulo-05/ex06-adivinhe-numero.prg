FUNCTION Main()

    LOCAL nSecreto     := HB_RandomInt(1, 100)
    LOCAL nTentativas  := 7
    LOCAL cInput       := ""
    LOCAL nJogada      := 0
    LOCAL nI           := 0


    FOR nI := 1 TO nTentativas STEP 1
        ACCEPT "Qual o numero secreto (1 - 100): " to cInput
        nJogada := Val(cInput)
        IF nJogada == nSecreto
            QOut('Ganhou!')
            EXIT
        ELSEIF nJogada > nSecreto
            QOut('O numero secreto e menor!')
        ELSE
            QOut('O numero secreto e maior!')
        ENDIF
    NEXT
    QOut("O numero secreto e : ", nSecreto)




RETURN NIL