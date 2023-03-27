module Main where
import Example.ExpressionTree
import Test.HUnit
import qualified System.Exit as Exit

simpleTest :: Test
simpleTest = TestCase (assertEqual "evaluate $ OpNode (+) \"+\" (ValueNode 3) (ValueNode 4) should return 7" 7 (evaluate $ OpNode (+) "+" (ValueNode 3) (ValueNode 4)))

expressionTest :: Test
expressionTest = TestCase (assertEqual "show $ OpNode (*) \"*\" (ValueNode 2) $ OpNode (+) \"+\" (ValueNode 3) (ValueNode 4)" "* 2 + 3 4" (show $ OpNode (*) "*" (ValueNode 2) $ OpNode (+) "+" (ValueNode 3) (ValueNode 4)) )

tests :: Test
tests = TestList [TestLabel "ExpressionTree Test 3 + 4" simpleTest, TestLabel "ExpressionTree Test \"* 2 + 3 4\"" expressionTest ]

main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess