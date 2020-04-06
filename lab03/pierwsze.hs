pierwsze :: [Int] -> [Int]
-- funkcja znajdujące w podanej liście wszystkie liczby pierwsze

pierwsze = \input -> filter (\el -> el > 1 && (length [x | x <- [2..(el-1)], mod el x == 0]) == 0) input
