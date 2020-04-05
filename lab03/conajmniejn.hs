import Data.List

--with nub
conajmniejn2 :: [Int] -> Int -> [Int]
conajmniejn2 list n = nub $ filter (\el -> (length $ filter (==el) list) >= n) list
