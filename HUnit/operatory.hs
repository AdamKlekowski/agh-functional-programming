{-
 Przerób przykład z sekcji Testy jednostkowe z HUnit/Przykłady z wykorzystaniem operatorów.
-}

import Test.HUnit
 
testlist = TestList ["testSum" ~: (10 + 5) ~?= 15      
                   , "testProd" ~: (10 * 15) ~?= 150
                   , "testPred" ~: (10 > 5) @? "10 > 5"
                   , "testFailure" ~: (10 + 2) ~?= 15
                    ]
 
main :: IO ()
main = do
  runTestTT testlist
  return ()
