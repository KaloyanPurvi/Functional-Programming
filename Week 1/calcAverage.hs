--Задача 3. Да се дефинира функция calcAverage, 
--която пресмята на средно аритметичното от квадратите на 2 числа.
main :: IO()
main=do
    print (myAvg 2 1)
myAvg::Double->Double->Double
myAvg a b=
    ((a*a)+(b*b))/2