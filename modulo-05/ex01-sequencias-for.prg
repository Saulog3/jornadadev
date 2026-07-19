FUNCTION Main()

    LOCAL nI := 1

    // a) Imprima os n├║meros de 1 a 100

    FOR nI :=  1 TO 100 STEP 1
        QOut("Numero: ", AllTrim(Str(nI)))
        hb_idleSleep(0.1) // Devido ao erro no terminal;
                          // adicionei essa fun├º├úo para exibir todos os elementos sem pular nenhum
    NEXT
    WAIT


   // b) Imprima os n├║meros de -50 a 50 

    FOR nI :=  -50 TO 50 STEP 1
        QOut("Numero: ", AllTrim(Str(nI)))
        hb_idleSleep(0.1)
    NEXT
    WAIT

   // c) Imprima os n├║meros de 80 a 5 em ordem decrescente

    FOR nI :=  80 TO 5 STEP -1
        QOut("Numero: ", AllTrim(Str(nI)))
        hb_idleSleep(0.1)
    NEXT
    WAIT

RETURN NIL