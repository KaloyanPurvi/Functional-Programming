myDigitCount::Int->Int
myDigitCount 0 = 1
myDigitCount a = myDigitCountHelper a 0
    where
        myDigitCountHelper::Int->Int->Int
        myDigitCountHelper 0 count = count
        myDigitCountHelper a count=myDigitCountHelper ( a `div` 10) (count+1)