proc getAlphabet(): string =
  var accm = ""
  for letter in 'a'..'z':  # see iterators
    accm.add(letter)
  return accm

var i: int

var a = getAlphabet()

echo a
a.addInt(1)
a.addInt(i)
a.addFloat(2.0)
var b = "yo"
b.add('a')
echo a
echo b