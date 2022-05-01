proc modify(a:ref (int,int)) =
  a[0] = 4

var b = new((int,int))
b[0] = 1
b[1] = 2

echo repr b
modify(b)
echo repr b