proc isPaired*(sentence:string): bool =
    #            ( , [ , {
    var opened:(int,int,int)
    var closed:(int,int,int)
    var lastOpen:char

    for letter in sentence:
        if letter == '(':
            lastOpen = letter
            inc opened[0]
        if letter == '[':
            lastOpen = letter
            inc opened[1]
        if letter == '{':
            lastOpen = letter
            inc opened[2]
        
        if letter == ')':
            if opened[0] == 0:
                return false
            inc closed[0]
        if letter == ']':
            if opened[1] == 0:
                return false
            inc closed[1]
        if letter == '}':
            if opened[2] == 0:
                return false
            inc closed[2]
    
    opened[0] == closed[0] and opened[1] == closed[1] and opened[2] == closed[2]