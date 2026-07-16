FUNCTION Main()
   LOCAL cNome
   LOCAL nIdade
   LOCAL nValor1
   LOCAL nValor2

   // ACCEPT lê uma string
//    ACCEPT "Digite seu nome: " TO cNome
//    ACCEPT "Digite o primeiro valor: " TO nValor1
//    ACCEPT "Digite o segundo valor: " TO nValor2


   // INPUT lê um valor (número, string, data, lógico)
//    INPUT "Digite sua idade: " TO nIdade
//    INPUT "Digite sua idade: " TO nIdade
   INPUT "Valor 1: " TO nValor1
   INPUT "Valor 2: " TO nValor2
    
   QOut("Você tem " + Alltrim(Str(nIdade)) + " anos.")
//    QOut("Ola, " + cNome + "!")
   QOut("Você tem " + Alltrim(Str(nIdade)) + " anos.")

RETURN NIL
