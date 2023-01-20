module Main where
import ExampleFunction

main :: IO ()
main = do
    let sum = exampleSum 1 2
    print sum