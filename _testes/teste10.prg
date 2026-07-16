FUNCTION Main()

    LOCAL cA := ""
    LOCAL cB := ""
    LOCAL nA := 0
    LOCAL nB := 0
 
 
    ACCEPT "Digite o primeiro numero: " TO cA
    ACCEPT "Digite o segundo numero:  " TO cB

    nA := Val( StrTran( AllTrim( cA ), ",", "." ) )
    nB := Val( StrTran( AllTrim( cB ), ",", "." ) )

 
    Qout("Soma          : " + Str( nA + nB, 10, 2 ))
    Qout( "Subtracao     : " + Str( nA - nB, 10, 2 ))
    Qout( "Multiplicacao : " + Str( nA * nB, 10, 2 ))
 
    IF nB <> 0
       ? "Divisao       : " + Str( nA / nB, 10, 2 )
    ELSE
       ? "Divisao       : impossivel dividir por zero."
    ENDIF
 
   
 RETURN NIL