--Задача 3. Да се дефинира функция calcAverage, 
--която пресмята на средно аритметичното от квадратите на 2 числа.
main :: IO ()
main = do
    print $ calcAverage 2.5 1

calcAverage :: Double -> Double -> Double
calcAverage a b = (a ** 2 + b ** 2) / 2