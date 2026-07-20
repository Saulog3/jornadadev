FUNCTION Main()

    LOCAL nSecreto     := HB_RandomInt(1, 100)
    LOCAL nTentativas  := 7
    LOCAL cInput       := ""
    LOCAL nJogada      := 0
    LOCAL nI           := 0

     hb_cdpSelect("PT850")


    QOut("========================================")
    QOut("          JOGO DA ADIVINHA├ç├âO           ")
    QOut("========================================")

    FOR nI := nTentativas TO 1 STEP -1

    QOut("========================================")
    QOut("          Voc├¬ tem ", AllTrim(Str(nI)), "Tentativas")
    QOut("========================================")   
    QOut("")   

        ACCEPT "Qual o numero secreto (1 - 100): " TO cInput
        QOut("") 
        nJogada := Val(cInput)
        IF nJogada == nSecreto
            QOut('Ganhou!')
            EXIT
        ELSEIF nJogada > nSecreto
            QOut('O numero secreto ├® menor!')
            QOut("") 
        ELSE
            QOut('O numero secreto ├® maior!')
            QOut("") 
        ENDIF
    NEXT
    QOut("O numero secreto ├® : ", AllTrim(Str(nSecreto)))

RETURN NIL