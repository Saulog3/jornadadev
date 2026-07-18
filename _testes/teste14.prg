FUNCTION main()

    LOCAL nNum := 0
    LOCAL nI   := 0

    ACCEPT "Tabuada de qual numero? " TO nNum

    nNum   := Val(nNum)
    
    FOR nI := 1 TO 10
        QOut( AllTrim(Str(nNum)) + " x " + AllTrim(Str(nI)) + " = " + AllTrim(Str(nNum * nI) ))
    NEXT 

RETURN NIL
