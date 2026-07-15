FUNCTION Main()

    LOCAL nValor     := 250
    LOCAL nDesconto  := 0
    LOCAL nTotal     := 0

    IF nValor > 100
        nDesconto := nValor * 0.10
    ENDIF  

    QOut("Desconto total: " + str(nDesconto))

RETURN NIL