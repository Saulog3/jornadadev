REQUEST HB_CODEPAGE_PT850
REQUEST HB_LANG_PT

Function Main()
    LOCAL cNome   := "Saulo"
    LOCAL cCidade := "Tabo´┐¢o da Serra"
    LOCAL cCurso  := "Harbour/ADVPL"
        
    hb_cdpSelect("PT850")
    hb_langSelect("PT")

    QOut("============================")
    QOut("  FICHA DE APRENSENTA´┐¢´┐¢O    ")
    QOut("============================")

    QOut("Nome   : " + cNome)
    QOut("Cidade : " + cCidade)
    QOut("Curso  : " + cCurso)
    QOut("============================")
RETURN NIL

