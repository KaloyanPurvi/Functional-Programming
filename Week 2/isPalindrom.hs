main::IO()
main=do
    print $ isPermutation 1124 2421 --should me false
    print $ isPermutation 2421 1242 --should be true
isPermutation::Int->Int->Bool
isPermutation entry seeked=flipDigit 0
    where
        flipDigit::Int->Bool
        flipDigit 10 = True
        flipDigit digit= (doesDigitCountMatch digit)&&(flipDigit (digit+1))
            where
                doesDigitCountMatch::Int->Bool
                doesDigitCountMatch digitToCheck = (digitOccurrences  entry)==(digitOccurrences  seeked)
                    where
                        digitOccurrences ::Int->Int
                        digitOccurrences  0 = if(digitToCheck==0) then 1 else 0
                        digitOccurrences  numberToCountDigitFrom = if(digitToCheck==(mod numberToCountDigitFrom 10)) then (1+(digitOccurrences (div numberToCountDigitFrom 10))) else digitOccurrences (div numberToCountDigitFrom 10)

