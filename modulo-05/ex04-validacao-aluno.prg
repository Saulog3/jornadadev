FUNCTION Main()

    LOCAL cNome       := ""
    LOCAL cDisc       := ""
    LOCAL nNota1      := 0
    LOCAL nNota2      := 0
    LOCAL cInputnota1 := ""
    LOCAL cInputnota2 := ""
    LOCAL nMedia      := 0


    WHILE .T.
        ACCEPT "Nome do Aluno: " TO cNome
        IF Len(Trim(cNome)) > 0 
            EXIT

        ENDIF
        QOut("Preencha o campo nome")
    ENDDO


    WHILE .T.
        ACCEPT "Digite a materia no maximo tres letras Ex[POR]: " TO cDisc
        IF Len(cDisc) == 3 .AND. cDisc == Upper(cDisc)
            EXIT

        ENDIF
        QOut("Permitido somente 3 Letras.")
    ENDDO

    WHILE .T.
        ACCEPT "Digite a nota 1 (0 a 10): " TO cInputnota1
        nNota1 := Val(cInputnota1)
        IF nNota1 >= 0 .AND. nNota1 <= 10
            EXIT
            
        ENDIF
        QOut("Nota inv├ílida! Digite um valor entre 0 e 10.")
    ENDDO

    WHILE .T.
        ACCEPT "Digite a nota 2 (0 a 10): " TO cInputnota2
        nNota2 := Val(cInputnota2)
        IF nNota2 >= 0 .AND. nNota2 <= 10
            EXIT
        ENDIF
        QOut("Nota invalida! Digite um valor entre 0 e 10.")
    ENDDO

    nMedia := (nNota1 + nNota2) / 2

    QOut("========================================")
    QOut("           RESUMO DO ALUNO              ")
    QOut("========================================")
    QOut("Aluno:      " + cNome                    )
    QOut("Disciplina: " + cDisc                    )
    QOut("Nota 1:     " + AllTrim(Transform(nNota1, "99.9")))
    QOut("Nota 2:     " + AllTrim(Transform(nNota2, "99.9")))
    QOut("----------------------------------------")
    QOut("Media Final: " + AllTrim(Transform(nMedia, "99.9")))
    QOut("========================================")
    QOut("")


RETURN NIL