f=987658437987985843657835983443287890098465673765765757657576249837^1345
g=983247325463743748389924632246746378445654646632342368987475255665^1345

%time u =f*g
print("u= ", u)
j=10
def karatsuba1(x,y):
  n = max(len(str(x)),len(str(y)))
  nby2 = floor(n/2)
  a = floor(x/j**(nby2))
  b = x % j**(nby2)
  c = floor(y/j**(nby2))
  d = y % j**(nby2)
  ac = a*c
  bd = b*d
  ad_plus_bc = (a+b)*(c+d)
  prod = ac * j**(2*nby2) + (ad_plus_bc - ac - bd)*j + bd
  print("p= ",prod)
  return prod

%time v=karatsuba1(f,g)









