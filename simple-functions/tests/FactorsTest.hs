module Main where
import SimpleFunctions (factors)
import Test.HUnit
import qualified System.Exit as Exit

factorsTestOne :: Test
factorsTestOne = TestCase (assertEqual "factors 12 should return [1,2,3,4,6,12]" [1,2,3,4,6,12] (factors 12))

factorsTestTwo :: Test
factorsTestTwo = TestCase (assertEqual "factors 134 should return [1,2,67,134]" [1,2,67,134] (factors 134))

factorsTestThree :: Test
factorsTestThree = TestCase (assertEqual "factors 1943 should return [1,29,67,1943]" [1,29,67,1943] (factors 1943))


tests :: Test
tests = TestList [
                  TestLabel "FACTORS TEST ONE" factorsTestOne
                 ,TestLabel "FACTORS TEST TWO" factorsTestTwo
                 ,TestLabel "FACTORS TEST THREE" factorsTestThree
                 ]

main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess