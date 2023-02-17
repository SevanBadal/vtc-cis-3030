module Main where
import RecursionMaps (wordFreq)
import Test.HUnit
import qualified System.Exit as Exit
import qualified Data.Map as Dict
import Data.Char (toLower)
testMapOne :: Integral a => Dict.Map String a
testMapOne = Dict.fromList [("bye",2), ("you", 2), ("don't", 1), ("know", 1)]

wordFreqTestOne :: Test
wordFreqTestOne = TestCase (assertEqual "wordFreq \"bye bye You You don't know \"" testMapOne (Dict.mapKeys (\str -> map toLower str) (wordFreq "bye bye You You don't know")))

wordFreqTestTwo :: Test
wordFreqTestTwo = TestCase (assertEqual "wordFreq \"Bye bye You you don't know \"" testMapOne (Dict.mapKeys (\str -> map toLower str) (wordFreq "Bye bye You you don't know")))


tests :: Test
tests = TestList [
                 TestLabel "WORD FREQ TEST ONE" wordFreqTestOne
                ,TestLabel "WORD FREQ TEST ONE" wordFreqTestTwo
                ]

main :: IO ()
main = do
    result <- runTestTT tests
    if failures result > 0 then Exit.exitFailure else Exit.exitSuccess