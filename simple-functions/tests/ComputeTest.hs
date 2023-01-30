module Main where
import SimpleFunctions (compute)
import Test.HUnit
import qualified System.Exit as Exit

computeTestOne :: Test
computeTestOne = TestCase (assertEqual "compute ('+', 3, 4) should return 7" 7 (compute ('+', 3, 4)))

computeTestTwo :: Test
computeTestTwo = TestCase (assertEqual "compute ('-', 2, 4) should return -2" (-2) (compute ('-', 2, 4)))

computeTestThree :: Test
computeTestThree = TestCase (assertEqual "compute ('*', 5, -1) should return 7" (-5) (compute ('*', 5, (-1))))

tests :: Test
tests = TestList [TestLabel "COMPUTE TEST '+'" computeTestOne
                 ,TestLabel "COMPUTE TEST '-'" computeTestTwo
                 ,TestLabel "COMPUTE TEST '*'" computeTestThree]

main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess