{-
Zaimplementuj dwuargumentową funkcję find, która jako argumenty przyjmuje listę oraz predykat. 
Funkcja ma zwrócić pierwszy element opakowany typem Maybe, który spełnia dany predykat 
(predykat = funkcja zwracająca wynik typu bool). Jeżeli takiego elementu nie ma, zwracane jest Nothing.
-}

find :: (a -> Bool) -> [a] -> Maybe a
find fun (x:xs) 
    | (fun x == True) = Just x
    | (length xs == 0) = Nothing
    | otherwise = find fun xs
