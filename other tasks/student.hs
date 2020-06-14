{-
Napisać implementację typu Student, który ma możliwość przechowywania informacji o 
imieniu, nazwisku, wieku i numerze indeksu pojedynczego studenta uczelni.
-}

data Student = Student {
    imie:: String, 
    nazwisko:: String,
    wiek:: Int,
    nr_indeksu:: Int
    }


{-
Do poprzedniego zadania dopisać insctance typeclass Show i Eq (porównanie po nazwisku) bez użycia deriving.
-}

instance Eq Student where
    a == b = nazwisko a == nazwisko b

instance Show Student where
    show a = show (imie a) ++ show (nazwisko a)

