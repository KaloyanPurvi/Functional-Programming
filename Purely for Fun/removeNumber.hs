main::IO()
main=do
    print (removeDigitFromX 2 1235)
    print (removeDigitFromX 5 1235)
removeDigitFromX::Int->Int->Int
removeDigitFromX digitToRemove removeFrom = helper 0 1 removeFrom
    where
        helper::Int->Int->Int->Int
        helper result multiplier originalDigit
         | (originalDigit==0) = result
         | ((mod originalDigit 10)==digitToRemove) = helper (result) multiplier (div originalDigit 10) 
         | otherwise = helper (result+(mod originalDigit 10)*multiplier) (multiplier*10) (div originalDigit 10) 
