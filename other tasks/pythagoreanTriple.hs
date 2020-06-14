{-
Proszę napisać funkcję PythagoreanTriple n, której wartością jest lista wartości (x,y,z) takie, że x^2 + y^2 = z^2 oraz 1 <= x,y,z <= n
-}

pythagoreanTriple :: Int -> [(Int, Int, Int)]
pythagoreanTriple n = [(x,y,z) | x<-[1..n], y<-[1..n], z<-[1..n], x^2 + y^2 == z^2]


