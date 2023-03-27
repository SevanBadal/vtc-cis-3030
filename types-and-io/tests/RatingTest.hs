module Main where
import Rating
import Test.HUnit
import qualified System.Exit as Exit

showTestOne :: Test
showTestOne = TestCase (assertEqual "show One should return \"*\"" (show One) "*")

showTestTwo :: Test
showTestTwo = TestCase (assertEqual "show Three should return \"***\"" (show Three) "***")

ordTest :: Test
ordTest = TestCase (assertEqual "Five > Four should return True" (Five > Four) True)

eqTest :: Test
eqTest = TestCase (assertEqual "Five == Four should return False" (Five == Four) False)

tests :: Test
tests = TestList [TestLabel "Rating Show Test One" showTestOne, TestLabel "Rating Show Test Two" showTestTwo, TestLabel "Rating Ord Test" ordTest, TestLabel "Rating Eq Test" eqTest ]

main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess