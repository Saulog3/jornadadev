FUNCTION Main()

   LOCAL nN1
   LOCAL nN2
   LOCAL nN3
   LOCAL nN4
   LOCAL nMedia
   LOCAL cInput

   QOut("--- Calculo de Media Ponderada ---")

   ACCEPT "Digite a nota do 1o bimestre: " TO cInput
   nN1 := Val(cInput)
   
   ACCEPT "Digite a nota do 2o bimestre: " TO cInput
   nN2 := Val(cInput)
   
   ACCEPT "Digite a nota do 3o bimestre: " TO cInput
   nN3 := Val(cInput)
   
   ACCEPT "Digite a nota do 4o bimestre: " TO cInput
   nN4 := Val(cInput)

   nMedia := (nN1 * 1 + nN2 * 2 + nN3 * 3 + nN4 * 4) / 10

   QOut("")
   QOut("Resultado Final")
   QOut("---------------")
   QOut("Media Ponderada: " + Str(nMedia, 10, 2))
   
   WAIT

RETURN NIL