find :: (a -> Bool) -> [a] -> Maybe a
find fun (x:xs) 
    | (fun x == True) = Just x
    | (length xs == 0) = Nothing
    | otherwise = find fun xs
