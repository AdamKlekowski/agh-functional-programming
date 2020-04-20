{-
Zbuduj nowy typ Osoba, zawierający imię, nazwisko, pesel. Napisz typeclase umożliwiającą porównywanie osób (po peselu) i sortowanie po nazwisku. Czy da się wyświetlić osobę? Co gdyby dziedziczyć po Eq i Ord? Jak zachowywałoby się porównywanie ==,<=? Poniższe powinny działać poprawnie:

	let adam = Osoba "Adam" "Klekowski" "123456789"
	let klekowski = Osoba "A" "Klekowski"  "123456789"
	let lukasz = Osoba "Łukasz" "Klekowski" "111111111"
	ghci> adam == klekowski
	True
	ghci> adam > klekowski
	True
-}

data Osoba = Osoba {
    imie:: String, 
    nazwisko:: String, 
    pesel:: String
    } deriving (Show)
    
instance Eq Osoba where
    a == b = pesel a == pesel b

instance Ord Osoba where
    compare a b = compare (pesel a) (pesel b)
