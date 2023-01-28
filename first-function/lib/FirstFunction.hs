module FirstFunction where

-- Write your first haskell function here
-- Debug in GHCi
-- Run main with cabal
-- Test with cabal

exampleSum :: Int -> Int -> Int
exampleSum x y = x + y
-- ✅
greet :: String -> String
greet x = "Hello, " ++ x ++ "!"