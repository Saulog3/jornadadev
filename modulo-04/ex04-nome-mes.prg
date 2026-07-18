FUNCTION Main()

    LOCAL cInputMes := ""
    LOCAL nMes := 0
    LOCAL cNomeMes := ""
    LOCAL aMeses := { "Janeiro", "Fevereiro", "Marco", "Abril", "Maio", "Junho", ;
                     "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro" }
    
    ACCEPT "Digite o numero do mes (1 a 12): " TO cInputMes

    nMes := Val(cInputMes)

    IF nMes >= 1 .AND. nMes <= Len(aMeses)
        QOut("Mes selecionado: ", aMeses[nMes])
    ELSE
        QOut("Mes invalido")
    ENDIF

RETURN NIL
