FUNCTION main()

    LOCAL cInput  := ""
    LOCAL nNota   := 0

    WHILE .T.
        ACCEPT "Nota (0 a 10): " TO cInput
        IF nNota >= 0 .AND. nNota <= 10
            exit
        ENDIF
        QOut("Nota Invalida! Tenta de novo.")
    ENDDO

RETURN NIL
// LOOP INFINITO!
