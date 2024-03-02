{-POW-}
myPow::Double->Int->Double
myPow a 0 = 1
myPow a b= a*(myPow a (b-1))