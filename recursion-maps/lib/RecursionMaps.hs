module RecursionMaps where
-- Add module imports below, I have give you a few. You should need anything beyond these!
-- Feel free to rename the qualified imports
import qualified Data.Map as Dict
import qualified Data.List as List
import qualified Data.Char as Ch
import qualified Data.Ord as Or

-- Type Signatures are required for all functions!

-- 1. Provide a  recursive definition for a countValue function 
-- that will return the number of times value appears in a list.
-- So countValue 2 [1,2,7,2,3,8,2,4] should return 3
-- test command: cabal run count-value-test -v0

-- 2. Define a function applyWhile that will apply a function repeatedly to a starting value until 
-- another function returns false about the result, returning the result that violated the while function.
-- So: applyWhile (<2) (*2) 1
-- should return 2 because the initial answer of 1*2 is no longer < 2, 
-- while: applyWhile (<100) (*2) 1
-- should return 128, because 128 is the first power of 2 not less than 100
-- test command: cabal run apply-while-test -v0

-- 3. Write a function wordFreq that will compute the number of 
-- times each word appeared in a text string.
-- Two words should be considered the same if they have the same letters, 
-- regardless of their capitalization. The result should be returned in an appropriate Map.
-- Hint: the type of your Map's keys should be String
-- Another Hint: Break this question down into smaller parts (aka make multiple helper functions)!!!!
-- test command: cabal run word-freq-test -v0

-- 4. write a function topN that takes a string of takes an returns a list of the most common words 
-- topN should take a whole number and a String as arguments
-- topN should return a list of the most common words
-- EX: topN 2 "I saw the the the big fluffy cat sleeping on on the windowsill" should return ["the","on"]"
-- HINT: examine the user defined sorting functions in Data.List: https://hackage.haskell.org/package/base-4.17.0.0/docs/Data-List.html#g:25
-- test command: cabal run top-n-test -v0
