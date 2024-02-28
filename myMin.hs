main :: IO()
main = do
    print (myMin 15 1)

myMin::Int->Int->Int
myMin a b =
    if (a<b) then a else b

