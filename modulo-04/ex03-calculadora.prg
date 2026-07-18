FUNCTION Main()

    LOCAL cInputNumA := ""
    LOCAL cInputNumB := ""
    LOCAL nNum1 := 0
    LOCAL nNum2 := 0
    LOCAL nResultado := 0
    LOCAL cOpcao := ""

    CLS
    cOpcao := MenuSelecao()

    IF !( cOpcao >= "1" .AND. cOpcao <= "6" )
        QOut("")
        QOut("Opcao invalida! Encerrando o programa.")
        WAIT
        RETURN NIL
    ENDIF

    ACCEPT "Digite o primeiro numero: " TO cInputNumA
    nNum1 := Val(cInputNumA)

    IF !( cOpcao == "5" )
        ACCEPT "Digite o segundo numero: " TO cInputNumB
        nNum2 := Val(cInputNumB)
    ENDIF

    QOut("")
    DO CASE
        CASE cOpcao == "1"
            nResultado := Somar(nNum1, nNum2)
            QOut("Resultado da Soma: " + AllTrim(Str(nResultado)))

        CASE cOpcao == "2"
            nResultado := Subtrair(nNum1, nNum2)
            QOut("Resultado da Subtracao: " + AllTrim(Str(nResultado)))

        CASE cOpcao == "3"
            nResultado := Dividir(nNum1, nNum2)
            QOut("Resultado da Divisao: " + AllTrim(Str(nResultado)))

        CASE cOpcao == "4"
            nResultado := Multiplicar(nNum1, nNum2)
            QOut("Resultado da Multiplicacao: " + AllTrim(Str(nResultado)))

        CASE cOpcao == "5"
            nResultado := Sqrt(nNum1)
            QOut("Raiz Quadrada de " + AllTrim(Str(nNum1)) + ": " + AllTrim(Str(nResultado)))

        CASE cOpcao == "6"
            nResultado := Potencia(nNum1, nNum2)
            QOut("Resultado da Potencia: " + AllTrim(Str(nResultado)))
    ENDCASE

    QOut("")
    WAIT

RETURN NIL

FUNCTION MenuSelecao()

   LOCAL cSelecao := ""

   QOut("==============================")
   QOut("         CALCULADORA          ")
   QOut("==============================")
   QOut("1 - SOMAR                     ")
   QOut("2 - SUBTRAIR                  ")
   QOut("3 - DIVIDIR                   ")
   QOut("4 - MULTIPLICAR               ")
   QOut("5 - RAIZ QUADRADA             ")
   QOut("6 - POTENCIA                  ")
   QOut("==============================")

   ACCEPT "Selecione o calculo: " TO cSelecao

RETURN cSelecao

FUNCTION Somar(n1, n2)
RETURN n1 + n2

FUNCTION Subtrair(n1, n2)
RETURN n1 - n2

FUNCTION Multiplicar(n1, n2)
RETURN n1 * n2

FUNCTION Dividir(n1, n2)

    LOCAL nCalc := 0
    
    IF n2 == 0
        Qout("Impossivel divir por ZERO")
    ELSE
        nCalc := n1 / n2
    ENDIF

RETURN nCalc

FUNCTION Potencia(n1, n2)
RETURN n1 ^ n2

