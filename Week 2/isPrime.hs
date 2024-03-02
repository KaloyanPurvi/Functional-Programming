{-ISPRIME-}
myIsPrime::Int->Bool
myIsPrime 1=True
myIsPrime a=not(notPrimeProof 2 a)
    where notPrimeProof::Int->Int->Bool
          notPrimeProof start reach=
            if(start==reach) 
            then False
            else
                if((reach `mod` start)==0) 
                 then True
                  else notPrimeProof (start+1) reach