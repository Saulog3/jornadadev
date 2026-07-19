# define VALOR1 180
# define VALOR2 260
# define VALOR3 380
# define VALOR4 520

FUNCTION Main()

    LOCAL dDataNascimento    := Date()
    LOCAL cInputData         := ""
    LOCAL nIdade             := 0
    LOCAL cNumDependente     := ""
    LOCAL nValorPlano        := 0
    LOCAL nValorDependentes  := 0
    LOCAL nValorTotal        := 0


    ACCEPT "Data de Nascimento DD/MM/AAAA: " TO cInputData
    ACCEPT "Quantidade de dependentes: "     TO cNumDependente

    dDataNascimento := CToD(cInputData)

    nIdade := obterIdade(dDataNascimento)
    nValorPlano := faixaPreco(nIdade)
    nValorDependentes := dependentePreco(cNumDependente)
    nValorTotal := nValorPlano + nValorDependentes


    QOut("================================="                               )
    QOut("     VALOR PLANO DE SAUDE     "                                  )
    QOut("================================="                               )
    QOut("            DADOS:            "                                  )
    QOut("================================="                               )
    QOut("IDADE:                       ", AllTrim(Str(nIdade))             )
    QOut("TOTAL DEPENDENTES:           ", cNumDependente                   )
    QOut("================================="                               )
    QOut("            CUSTO             "                                  )
    QOut("================================="                               )
    QOut("VALOR PLANO:       R$", Transform(nValorPlano,"999,999.99")      )
    QOut("VALOR DEPENDENTES: R$", Transform(nValorDependentes,"999,999.99"))
    QOut("VALOR TOTAL:       R$", Transform(nValorTotal, "999,999.99")     )
    QOut("================================="                               )


RETURN NIL

FUNCTION faixaPreco(nIdade)
    LOCAL nValorParcial := 0

    IF nIdade     <= 25
        nValorParcial := VALOR1
    ELSEIF nIdade <= 40
        nValorParcial := VALOR2
    ELSEIF nIdade <= 60
        nValorParcial := VALOR3
    ELSE
        nValorParcial := VALOR4
    ENDIF
    
RETURN nValorParcial


FUNCTION dependentePreco(nNumDepentente)
RETURN Val(nNumDepentente) * 90


FUNCTION obterIdade(dData)

    LOCAL dHoje   := Date()
    LOCAL nIdade  := Year(dHoje) - Year(dData)

    IF SubStr(DToS(dHoje), 5) < SubStr(DToS(dData), 5)
        nIdade--
    ENDIF

RETURN nIdade