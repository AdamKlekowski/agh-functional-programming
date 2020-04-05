usunDuplikaty :: Eq a => [a] -> [a]
usunDuplikaty [] = []
usunDuplikaty (x:xs) = x : (usunDuplikaty (usun x xs))

usun :: Eq a => a -> [a] -> [a]
usun _ [] = []
usun x (y:ys) = (if y /= x then [y] else []) ++ (usun x ys)
