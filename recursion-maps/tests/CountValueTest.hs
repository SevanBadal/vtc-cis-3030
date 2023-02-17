module Main where
import RecursionMaps (countValue)
import Test.HUnit
import qualified System.Exit as Exit

countValueTestOne :: Test
countValueTestOne = TestCase (assertEqual "countValue 2 [1,2,7,2,3,8,2,4] should return 3" 3 (countValue 2 [1,2,7,2,3,8,2,4]) )

tests :: Test
tests = TestList [TestLabel "COUNT VALUE TEST 1" countValueTestOne]

main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess