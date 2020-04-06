import Data.List

--with nub
conajmniejn2 :: [Int] -> Int -> [Int]
conajmniejn2 list n = nub $ filter (\el -> (length $ filter (==el) list) >= n) list

--without nub
conajmniejn2' :: [Int] -> Int -> [Int]
conajmniejn2' list n = foldl (\acc el -> if elem el acc then acc ++ [] else acc ++ [el]) [] $ filter (\el -> (length $ filter (==el) list) >= n) list
