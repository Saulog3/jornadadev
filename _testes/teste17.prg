FUNCTION MAIN()

    LOCAL nSoma := 0
    LOCAL aNums := {5, 2, 8, 1, 9, 3}

    ASORT (aNums)

    QOut(Str(ASCAN(aNums, 8)))

    // {1, 2, 3, 5, 8, 9)
    // posi├º├úo do 8 (0 se n├úo achar)

    AEVAL (aNums, {|nx| nSoma += nX})

    // roda o bloco em cada elemento

    QOut("Soma: " + Str(nSoma))
    
RETURN NIL
