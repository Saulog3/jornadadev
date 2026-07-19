FUNCTION main()

    LOCAL nNum   := 0
    LOCAL nI     := 0
    LOCAL cInput := ""

    WHILE .T.

        ACCEPT "Tabuada de 1 a 10 - [0] Para sair: " TO cInput
        QOut("")
        nNum   := Val(cInput)

        IF nNum == 0
            QOut("Adeus")
            EXIT

        ELSEIF nNum < 0
            QOut("0 e negativos sao invalidos")
            loop

        ELSE
            FOR nI := 1 TO 10
                QOut( AllTrim(Str(nNum)) + " x " + AllTrim(Str(nI)) + " = " + AllTrim(Str(nNum * nI) ))
            NEXT 

            QOut("")
            ACCEPT "Quer outra tabuada? (S/N): " to cInput

            IF Upper(cInput) == "N"
                EXIT
                QOut("")
                
            ENDIF
            QOut("")

        ENDIF

    ENDDO

RETURN NIL
