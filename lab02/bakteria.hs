{-
Napisz dwie wersje funkcji bakteria (Druga może nazywać się bakteria') o poniższym typie. 
Szczegółowe instrukcje na wiki.
-}
bakteria :: Int -> (Int, Int)
bakteria 0 = (1,1)
bakteria n = (b, 2*a+b) where (a,b) = bakteria(n-1)

bakteria' :: Int -> (Int, Int)
bakteria' 0 = (2,0)
bakteria' n = (b, 2*a+b) where (a,b) = bakteria'(n-1)

--map bakteria [0..7]
