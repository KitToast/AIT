-- nubBy(((>1).).gcd)[2..]

primes = let
  one  = \cont (x:xs) ->     x:cont xs
  zero = \cont (x:xs) -> False:cont xs
  succ n = one . n
  primes n = True:f (primes sn) where
    f = sn f
    sn = succ n
in False:False:primes zero

main=print.take 30$
let f='.';o c(x:y)=x:c y;z c(x:y)=f:c y;p n='p':ap fix p(o.n)in f:f:p z
