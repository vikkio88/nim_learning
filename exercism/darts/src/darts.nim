import std/math

type Coord = tuple[x,y:float]
proc score*(coords:Coord): int =
    let distance = sqrt((coords.x ^ 2) + (coords.y ^ 2))
    if distance > 10.0:
        result = 0
    elif distance <= 1.0:
        result = 10
    elif distance <= 5.0:
        result = 5
    else:
        result = 1