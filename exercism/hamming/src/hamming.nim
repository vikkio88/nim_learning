proc distance*(strandA: string  = "", strandB: string = ""): int =
    if strandA.len != strandB.len:
        raise newException(ValueError, "Invalid strand string")
    
    for i in 0..(strandA.len-1):
        let a = strandA[i]
        let b = strandB[i]
        if a != b:
            #[
                weird instruction to increment
            ]#
            inc result