module Main where
import ExampleFunction (exampleSum)
import Test.HUnit
import qualified System.Exit as Exit

testExample :: Test
testExample = TestCase (assertEqual "should return 3" 3 (exampleSum 2 1))

tests :: Test
tests = TestList [TestLabel "Testing exampleSum" testExample]

main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess