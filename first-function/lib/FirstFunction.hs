module FirstFunction where

-- Write your first haskell function here
-- Debug in GHCi
-- Run main with cabal
-- Test with cabal

exampleSum :: Int -> Int -> Int
exampleSum x y = x + y

doubleMe :: Int -> Int
doubleMe x = x + x

greet :: [Char] -> [Char]
greet name = "Hello, " ++ (name ++ "!")