main :: IO()
main=do
    print (isInside 1 0 2)
isInside::Int->Int->Int->Bool
isInside x a b=
    if(x>=a&&x<=b) then True else False