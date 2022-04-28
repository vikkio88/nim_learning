import strutils

proc checkYelling(sentence:string): bool =
  for letter in sentence:
      if letter.isAlphaAscii() and letter.isUpperAscii():
        result = true
      elif letter.isAlphaAscii() and not letter.isUpperAscii():
          return false

  return result

  
proc hey*(sentence: string = ""): string =
  let sentence = multiReplace(sentence, {" ": "", "\t": "", "\n\r": ""})
  if sentence == "":
    return "Fine. Be that way!"

  let isYelling = checkYelling(sentence)
  let isAQuestion = sentence.endsWith("?")
  if not isYelling and isAQuestion:
    return "Sure."

  if isYelling and not isAQuestion:
    return "Whoa, chill out!"

  if isYelling and isAQuestion:
    return "Calm down, I know what I'm doing!"

  return "Whatever."


