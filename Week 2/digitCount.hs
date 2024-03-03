main::IO()
main = do
    print (myDigitCount 1233)
    print(myDigitCountRec 1233) 
    print (myDigitCount 0)
    print(myDigitCountRec 0)

{-ITERATIVE-}
myDigitCount::Int->Int
myDigitCount 0 = 1
myDigitCount a = myDigitCountHelper a 0
    where
        myDigitCountHelper::Int->Int->Int
        myDigitCountHelper 0 count = count
        myDigitCountHelper a count=myDigitCountHelper ( a `div` 10) (count+1)

{-BASIC-}
myDigitCountRec::Int->Int
myDigitCountRec x
 | x<10 = 1
 | otherwise = 1 + myDigitCountRec(div x 10)