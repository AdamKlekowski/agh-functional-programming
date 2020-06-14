{-
Napisz funkcję silnia n, która obliczy n!. 
Podaj dwie wersje tej funkcji: jedną rekurencyjną a jedną używając akumulator.
-}

factorial :: Integer -> Integer
factorial 0 = 1
factorial 1 = 1
factorial n = n * factorial (n-1)

factorial' :: Integer -> Integer
factorial' n = foldl (*) 1 [1..n]

