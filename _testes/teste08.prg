FUNCTION Main()

    LOCAL nNumero := 50
    LOCAL cTexto  := ""
    LOCAL dData := Date()
    SET DATE FORMAT TO "DD/MM/YYYY"

    QOut("Numero: " + AllTrim(Str(nNumero)))
    QOut("Texto " + cTexto)
    QOut("Data " + DtoC(dData))


RETURN NIL
