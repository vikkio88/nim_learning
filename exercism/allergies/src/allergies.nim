# Allergies scores
    # eggs (1)
    # peanuts (2)
    # shellfish (4)
    # strawberries (8)
    # tomatoes (16)
    # chocolate (32)
    # pollen (64)
    # cats (128)
import std/math

const allergens = ["eggs", "peanuts" , "shellfish", "strawberries", "tomatoes", "chocolate", "pollen", "cats"]

type Allergies* = object
    score*:int

proc lst*(a: Allergies): seq[string] =
  let max_index = int(log2(float(a.score)))
  echo max_index
  result = allergens[0..max_index]



proc isAllergicTo*(a: Allergies, food: string): bool =
    if not allergens.contains(food):
        return false

    let index = allergens.find(food)
    return float(a.score) >= pow(2.0,float(index))

