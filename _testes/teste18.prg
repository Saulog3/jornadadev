function Main()

    local dTime := ""
    local nI := 0

    For nI := 1 to 30
        dTime = Time()
        hb_idleSleep(1)
        CLS
        ? dTime
    NEXT nI



return nil