module Main where
import RecursionMaps (applyWhile)
import Test.HUnit
import qualified System.Exit as Exit

applyWhileTestOne :: Test
applyWhileTestOne = TestCase (assertEqual "applyWhile (<2) (*2) 1 should return 2 because the initial answer of 1*2 is no longer < 2" 2 (applyWhile (<2) (*2) 1 ))

applyWhileTestTwo :: Test
applyWhileTestTwo = TestCase (assertEqual "applyWhile (<100) (*2) 1 should return 128, because 128 is the first power of 2 not less than 100" 128 (applyWhile (<100) (*2) 1 ))


tests :: Test
tests = TestList [
                  TestLabel "APPLY WHILE TEST ONE" applyWhileTestOne
                 ,TestLabel "APPLY WHILE TEST TWO" applyWhileTestTwo
                 ]

main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess