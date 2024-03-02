{- MYGCD-}
    
myGCD::Int->Int->Int   
myGCD a 0 = a
myGCD a b = 
    b `myGCD` ((mod) a b)