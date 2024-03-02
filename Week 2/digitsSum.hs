main::IO()
main=do
    print (myDigitSumRec 2210)
    print (myDigitSum 2210)

{- RECURSIVE -}
myDigitSumRec::Int->Int
myDigitSumRec digit = myDigitSumHelperRec digit
    where
        myDigitSumHelperRec::Int->Int
        myDigitSumHelperRec 0 = 0
        myDigitSumHelperRec digit =( digit `mod` 10) + myDigitSumHelperRec (digit `div` 10)
{- ITERATIVE -}
myDigitSum::Int->Int
myDigitSum digit = myDigitSumHelper digit 0
    where
        myDigitSumHelper::Int->Int->Int
        myDigitSumHelper 0 mySum = mySum
        myDigitSumHelper digit mySum=myDigitSumHelper ( digit `div` 10) (mySum+( digit `mod` 10))
 