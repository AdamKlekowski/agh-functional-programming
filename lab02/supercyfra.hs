{-
Zdefiniuj funkcję supercyfra zgodnie z instrukcjami
Podpowiedzi:
* `div` i `mod` mogą się przydać
* podwójna rekurencja!  
-}
sumacyfr :: Int -> Int
sumacyfr 0 = 0
sumacyfr a = (a `mod` 10) + (sumacyfr (a `div` 10))

supercyfra :: Int -> Int
supercyfra liczba | liczba < 0 = supercyfra (abs liczba)
             | liczba < 10 = liczba
             | otherwise = supercyfra (sumacyfr liczba)

