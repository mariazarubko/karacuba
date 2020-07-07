f=1566156757236357352743265742^(110)
g=3487382686478324643475834678^(110)
%time u =f*g
def karat(x,y):
  if len(str(x)) == 1 or len(str(y)) == 1:
    return x*y
  else:
    n = max(len(str(x)),len(str(y)))
    nby2 = n // 2

    a = x // 10**(nby2)
    b = x % 10**(nby2)
    c = y // 10**(nby2)
    d = y % 10**(nby2)

    ac = karat(b,d)
    ad_plus_bc = karat((a+b),(c+d))
    bd = karat(a,c)
    return (bd * 10**(2*nby2)) + ((ad_plus_bc - bd - ac) * 10**(nby2)) + (ac)
%time v=karat(f,g)









