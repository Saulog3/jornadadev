#define PI 3.141592

FUNCTION Main()
   
   LOCAL nSelecao := ""

   QOut("==============================")
   QOut("  SELECIONE O CALCULO:        ")
   QOut("==============================")
   QOut("                              ")
   QOut("==============================")
   QOut("1 - CALCULAR AREA DO CIRCULO  ")
   QOut("2 - CALCULAR HIPOTENUSA       ")
   QOut("3 - CALCULAR IMC              ")
   QOut("==============================")

   ACCEPT "Selecione: " TO nSelecao

   IF nSelecao == "1"
      areaCirculo()
      WAIT
   ELSEIF nSelecao == "2"
      hipotenusa()
      WAIT
   ELSEIF nSelecao == "3"  
      imc()
      WAIT
   ELSE
      QOut("Selecao invalida")
   ENDIF

RETURN NIL


FUNCTION areaCirculo()

   LOCAL nCalc
   LOCAL nRaio

   ACCEPT "Valor raio do circulo: " TO nRaio

   nCalc := PI * (Val(nRaio) ^ 2)

   QOut(Str(nCalc, 10, 2))

RETURN NIL


FUNCTION hipotenusa()

   LOCAL nCateto1
   LOCAL nCateto2
   LOCAL nCalc

   ACCEPT "Valor do Cateto A: " TO nCateto1
   ACCEPT "Valor do Cateto B: " TO nCateto2

   nCalc := Sqrt((Val(nCateto1) ^ 2) + (Val(nCateto2) ^ 2))

   QOut(Str(nCalc, 10, 2))

RETURN NIL


FUNCTION imc()

   LOCAL nPeso
   LOCAL nAltura
   LOCAL nCalc

   ACCEPT "Valor do Peso: " TO nPeso
   ACCEPT "Valor da Altura: " TO nAltura

   nCalc := Val(nPeso) / (Val(nAltura) ^ 2)

   QOut(Str(nCalc, 10, 2))

RETURN NIL