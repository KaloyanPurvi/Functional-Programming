--Задача 1. Да се дефинира функция myMin, 
--която приема два аргумента и връща по-малкия от тях.
main :: IO()
main = do
    print (myMin 15 1)

myMin::Int->Int->Int
myMin a b =
    if (a<b) then a else b
