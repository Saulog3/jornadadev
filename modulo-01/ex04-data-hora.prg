Function Main()
    LOCAL cNome   := "Saulo"
    LOCAL cCidade := "Taboao da Serra"
    LOCAL cCurso  := "Harbour/ADVPL"
    LOCAL dData   := DToC(Date())
    LOCAL cHora   := Time()
        
    hb_cdpSelect("PT850")

    QOut("============================")
    QOut("  FICHA DE APRENSENTACAO    ")
    QOut("============================")
    QOut("Nome         : " + cNome)
    QOut("Cidade       : " + cCidade)
    QOut("Curso        : " + cCurso)
    QOut("Data e Hora  : " + dData + " - " + cHora)
    QOut("============================")
RETURN NIL
