module Main where
import ExampleFunction (exampleSum, exampleProduct, exampleQuotient)
import Test.HUnit
import qualified System.Exit as Exit

testExample :: Test
testExample = TestCase (assertEqual "should return 3" 3 (exampleSum 2 1))

testProduct :: Test
testProduct = TestCase (assertEqual "should return 6" 6 (exampleProduct 2 3))

testQuotient :: Test
testQuotient = TestCase (assertEqual "should return 4/3" (4/3) (exampleQuotient 4 3))

tests :: Test
tests = TestList [TestLabel "Testing exampleSum" testExample
                , TestLabel "Testing exampleProduct" testProduct
                , TestLabel "Testing exampleQuotient" testQuotient
                 ]

main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess