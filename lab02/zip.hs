{-
Zdefiniuję funkcję zip', działającą tak samo jak zip!
Podpowiedzi:
* poniżej jest już widoczna definicja typu tej funkcji
* są trzy przypadki: pierwsza lista jest pusta, druga lista jest pusta, obie są niepuste
-}
zip' :: [a] -> [b] -> [(a,b)]
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x,y) : zip' xs ys

