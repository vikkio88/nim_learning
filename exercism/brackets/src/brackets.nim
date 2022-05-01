proc isPaired*(sentence:string): bool =
    #            ( , [ , {
    var opened:(int,int,int)
    var closed:(int,int,int)
    var openedQueue: seq[char]

    for letter in sentence:
        if letter == '(':
            openedQueue.add('(')
            inc opened[0]
        if letter == '[':
            openedQueue.add('[')
            inc opened[1]
        if letter == '{':
            openedQueue.add('{')
            inc opened[2]

        let lastOpen = if openedQueue.len > 0: openedQueue[openedQueue.high] else: '\0'
        if letter == ')':
            if opened[0] == 0 or lastOpen != '(':
                return false
            inc closed[0]
            discard openedQueue.pop()
        if letter == ']':
            if opened[1] == 0 or lastOpen != '[':
                return false
            inc closed[1]
            discard openedQueue.pop()
        if letter == '}':
            if opened[2] == 0 or lastOpen != '{':
                return false
            inc closed[2]
            discard openedQueue.pop()
    
    opened[0] == closed[0] and opened[1] == closed[1] and opened[2] == closed[2]