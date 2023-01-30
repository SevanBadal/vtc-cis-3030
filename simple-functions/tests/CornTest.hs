module Main where
import SimpleFunctions (corn)
import Test.HUnit
import qualified System.Exit as Exit

cornTestOne :: Test
cornTestOne = TestCase (assertEqual "corn 4 should return 2.0" (4 * 0.50) (corn 4))

cornTestTwo :: Test
cornTestTwo = TestCase (assertEqual "corn 12 should return 5.4" (12 * 0.45) (corn 12))

cornTestThree :: Test
cornTestThree = TestCase (assertEqual "corn 23 should return 10.35" (23 * 0.45) (corn 23))

cornTestFour :: Test
cornTestFour = TestCase (assertEqual "corn 24 should return 9.6" (24 * 0.40) (corn 24))

cornTestFive :: Test
cornTestFive = TestCase (assertEqual "corn 35 should return 14.0" (35 * 0.40) (corn 35))

cornTestSix :: Test
cornTestSix = TestCase (assertEqual "corn 36 should return 12.6" (36 * 0.35) (corn 36))

cornTestSeven :: Test
cornTestSeven = TestCase (assertEqual "corn 102 should return 35.7" (102 * 0.35) (corn 102))


tests :: Test
tests = TestList [TestLabel "CORN TEST @ 0.50 PER EAR" cornTestOne
                 ,TestLabel "CORN TEST Lower Bound @ 0.45 PER EAR" cornTestTwo
                 ,TestLabel "CORN TEST Upper Bound @ 0.45 PER EAR" cornTestThree
                 ,TestLabel "CORN TEST Lower Bound @ 0.40 PER EAR" cornTestFour
                 ,TestLabel "CORN TEST Upper Bound @ 0.40 PER EAR" cornTestFive
                 ,TestLabel "CORN TEST Lower Bound @ 0.35 PER EAR" cornTestSix
                 ,TestLabel "CORN TEST @ 0.35 PER EAR" cornTestSeven
                 ]

main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess