proc distance*(strandA: string  = "", strandB: string = ""): int =
    if strandA.len != strandB.len:
        raise newException(ValueError, "Invalid strand string")
    # alternative syntax for ,len -1
    # or can use
    #for i in strandA.low..strandA.high:
    for i in 0..<strandA.len:
        let a = strandA[i]
        let b = strandB[i]
        if a != b:
            #[
                weird instruction to increment
            ]#
            inc result