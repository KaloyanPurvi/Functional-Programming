--CUSTOM TASK that I wanted to try

main::IO()
main=do
    print (reverseNumber 102)


reverseNumber::Int->Int
reverseNumber start=
    reverseNumberHelp 0 start

reverseNumberHelp::Int->Int->Int
reverseNumberHelp result 0 = result
reverseNumberHelp result start=
    reverseNumberHelp ((result*10)+(mod start 10)) (div start 10)

