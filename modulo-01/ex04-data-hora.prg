Function Main()
    LOCAL cNome   := "Saulo"
    LOCAL cCidade := "Tabo∆o da Serra"
    LOCAL cCurso  := "Harbour/ADVPL"
        
    hb_cdpSelect("PT850")

    QOut("==========================")
    QOut("  FICHA DE APRENSENTAÄ«O  ")
    QOut("==========================")

    QOut("Nome   : " + cNome)
    QOut("Cidade : " + cCidade)
    QOut("Curso  : " + cCurso)
    QOut("==========================")
RETURN NIL
