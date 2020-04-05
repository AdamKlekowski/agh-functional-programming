{-
Napisz funkcję usunduplikaty, która usunie ze stringa powtarzające się znaki.
Podpowiedzi:
* string to lista
* przydatna może być funkcja usuwająca wszystkiego wystąpienia danego elementu z listy

PS zamiast 
    "usunduplikaty :: [Char] -> [Char]" 
mogłoby być 
    "usunduplikaty :: (Eq a) => [a] -> [a]"
Funkcja byłaby wtedy bardziej uniwersalna
-}
usunDuplikaty :: Eq a => [a] -> [a]
usunDuplikaty [] = []
usunDuplikaty (x:xs) = x : (usunDuplikaty (usun x xs))

usun :: Eq a => a -> [a] -> [a]
usun _ [] = []
usun x (y:ys) = (if y /= x then [y] else []) ++ (usun x ys)
