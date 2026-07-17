FUNCTION Main()
   LOCAL cNome     := ""
   LOCAL nDesconto := 0
   LOCAL nIdade    := 0
   LOCAL cDataNasc := ""
   LOCAL dNasc     := NIL
   LOCAL nPreco    := 0
   LOCAL nTotal    := 0

   ACCEPT "Nome do cliente: " TO cNome
   ACCEPT "Data de nascimento (DD/MM/AAAA): " TO cDataNasc
   dNasc := CTOD(cDataNasc)
   
   INPUT "Preco do produto: " TO nPreco

   nIdade := Int((Date() - dNasc) / 365)

   IF nIdade > 60
      nDesconto := nPreco * 0.125
   ENDIF

   nTotal := nPreco - nDesconto

   QOut("=== Resumo do Pedido ===")
   QOut("Cliente : " + cNome)
   QOut("Idade   : " + AllTrim(Str(nIdade)) + " anos")
   QOut("Preco   : R$ " + Str(nPreco, 10, 3))
   QOut("Desconto: R$ " + Str(nDesconto, 10, 3))
   QOut("------------------------")
   QOut("Total   : R$ " + Str(nTotal, 10, 3))
   
   WAIT
   
RETURN NIL