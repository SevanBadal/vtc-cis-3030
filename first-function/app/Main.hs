module Main where
import FirstFunction

main :: IO ()
main = do
    let greetingmessage = greet "sevan"
    putStrLn greetingmessage
