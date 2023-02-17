module Main where
import RecursionMaps (topN)
import Test.HUnit
import qualified System.Exit as Exit

topNTestOne :: Test
topNTestOne = TestCase (assertEqual "topN 2 \"I saw the the the big fluffy cat sleeping on on the windowsill\" should return [\"the\",\"on\"]" ["the","on"] (topN 2 "I saw the the the big fluffy cat sleeping on on the windowsill"))

topNTestTwo :: Test
topNTestTwo = TestCase (assertEqual "topN 3 \"I saw on on on on the the big big fluffy cat sleeping the windowsill\" should return [\"on\",\"the\",\"big\"]" ["on", "the", "big"] (topN 3 "I saw on on on on the the big big fluffy cat sleeping the windowsill"))


tests :: Test
tests = TestList [TestLabel "TOP N FROM STRING TEST ONE" topNTestOne
                 ,TestLabel "TOP N FROM STRING TEST TWO" topNTestTwo
                 ]

main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess