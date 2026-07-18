FUNCTION Main()

    LOCAL cInputMes := ""
    LOCAL nMes := 0
    LOCAL cNomeMes := ""
    LOCAL aMeses := { "Janeiro", "Fevereiro", "Marco", "Abril", "Maio", "Junho", ;
                     "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro" }

    



    ACCEPT "Digite o numero do mes (1 a 12): " TO cInputMes
    nMes := Val(cInputMes)

    IF nMes < 1 .OR. nMes > 12
        QOut( "Mes invalido" )
    ELSE
        cNomeMes := ObterNomeMes(nMes)
    ENDIF


    


    // DO CASE
    //     CASE nMes == 1
    //         cNomeMes := "Janeiro"
    //     CASE nMes == 2
    //         cNomeMes := "Fevereiro"
    //     CASE nMes == 3
    //         cNomeMes := "Marco"
    //     CASE nMes == 4
    //         cNomeMes := "Abril"
    //     CASE nMes == 5
    //         cNomeMes := "Maio"
    //     CASE nMes == 6
    //         cNomeMes := "Junho"
    //     CASE nMes == 7
    //         cNomeMes := "Julho"
    //     CASE nMes == 8
    //         cNomeMes := "Agosto"
    //     CASE nMes == 9
    //         cNomeMes := "Setembro"
    //     CASE nMes == 10
    //         cNomeMes := "Outubro"
    //     CASE nMes == 11
    //         cNomeMes := "Novembro"
    //     CASE nMes == 12
    //         cNomeMes := "Dezembro"
    //     OTHERWISE
    //         cNomeMes := "Mes invalido"
    // ENDCASE

    QOut("")
    QOut("Mes correspondente: " + cNomeMes)
    WAIT

RETURN NIL
