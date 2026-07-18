FUNCTION main()

    LOCAL nSoma := 0
    LOCAL nI   := 0

    FOR nI := 10 TO 1 STEP -1
        QOut(Str(nI))
    NEXT

    FOR nI := 2 TO 100 STEP 2
        nSoma += nI
        // QOut(Str(nI))
    NEXT


RETURN NIL
