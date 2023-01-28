module Main where
import SimpleFunctions (basicMath)
import Test.HUnit
import qualified System.Exit as Exit

integralTuple :: Integral a => (a,a,a,a) -> (a,a,a,a)
integralTuple x = x

basicMathTestOne :: Test
basicMathTestOne = TestCase (assertEqual "basicMath 8 2 should return (10,6,16,4)" (integralTuple (10, 6, 16, 4)) (basicMath 8 2))

basicMathTestTwo :: Test
basicMathTestTwo = TestCase (assertEqual "basicMath 4 5 should return (9,-1,20,0)" (integralTuple (9, (-1), 20, 0)) (basicMath 4 5))

tests :: Test
tests = TestList [TestLabel "BASIC MATH TEST 1" basicMathTestOne, TestLabel "BASIC MATH TEST 2" basicMathTestTwo]

main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess