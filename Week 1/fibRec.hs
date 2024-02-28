{-
Задача 4. Да се дефинира fibRec, която получава един аргумент n и 
връща n-тото число на Фибоначи, чрез рекурсивен процес. 
(Заб.: редицата е 1, 1, 2, 3, 5, ... и е индексирана от 0.)
-}
main::IO()
main=do
 print (fibRec 4)
fibRec::Int->Int
fibRec 0 = 1
fibRec 1 = 1
fibRec x=fibRec(x-1)+fibRec(x-2)