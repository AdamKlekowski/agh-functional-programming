{-
Napisz program odwracający i wyświetlający napis, który wcześniej został podany przez użytkownika. 
Program powinien wczytywać i odwracać stringi do czasu, aż użytkownik poda pustą linię.
-}

main = do   
	line <- getLine  
	if null line then return ()  
        else do  
		putStrLn $ reverse line  
                main
