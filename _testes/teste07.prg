FUNCTION Main()

    LOCAL nIdade := 70
    LOCAL LAtivo := .T.

    IF(nIdade > 60 .AND. LAtivo)
        QOut("A pessoa é idosa e está ativa")
    ENDIF

    IF(nIdade < 18 .OR. !LAtivo)
        QOut("A pessoa não é idosa ou não está ativa")
    ENDIF


RETURN NIL
