{-
Dla programu poniżej, który za zadanie ma odwracanie Stringa napisz testy sprawdzające czy funkcja działa poprawnie dla pustego napisu, dla napisu z dużymi literami (Szymon - nomyzS), dla stringów ze spacjami: „Ala ma kota” - „otak am alA” itp.
-}

import Test.HUnit
 
reverseWords :: String -> String  
reverseWords = unwords . map reverse . words
 
testlist = TestList ["empty string" ~: reverseWords "" ~?= ""
    , "string with uppercase" ~: reverseWords "Adam" ~?= "madA"
    , "string with whitespaces" ~: reverseWords "Ala ma kota" ~?= "otak am alA"
                    ]
 
main :: IO ()
main = do
  runTestTT testlist
  return ()
