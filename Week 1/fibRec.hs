{-
Задача 4. Да се дефинира fibRec, която получава един аргумент n и 
връща n-тото число на Фибоначи, чрез рекурсивен процес. 
(Заб.: редицата е 1, 1, 2, 3, 5, ... и е индексирана от 0.)
-}
main::IO()
main=do
  print (fibRecIter 4)

fibRecIter::Int->Int
fibRecIter x=
    fibHelper 0 1 x

fibHelper::Int->Int->Int->Int
fibHelper a b 0= (b)
fibHelper a b x=
    fibHelper b (a+b) (x-1)



fibRecNotIter::Int->Int
fibRecNotIter 0 = 1
fibRecNotIter 1 = 1
fibRecNotIter x=fibRecNotIter(x-1)+fibRecNotIter(x-2)

