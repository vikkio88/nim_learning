proc getAlphabet(): string =
  for letter in 'a'..'z':
    result.add(letter) # wtf if you use a var called result it will return it by default

var a = getAlphabet()
echo a