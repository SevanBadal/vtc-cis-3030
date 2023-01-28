module Main where
import SimpleFunctions
import Test.HUnit
import qualified System.Exit as Exit

testGreet :: Test
testGreet = TestCase (assertEqual "should return Hello, Sevan!" "Hello, Sevan!" ("Sevan"))

tests :: Test
tests = TestList [TestLabel "test1" testGreet]

main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess