module Locker where

-- define a new data type called Locker that boxes values up with a key.
-- You should only export two functions, lock and unlock.
-- You will need to define your own show (it should just return "*SECRET*" for all values)
-- You need to make Locker be an instance of Functor

-- lock takes a key and a value and returns a Locker
-- unlock takes a key and a Locker and returns a Maybe, returning the value only if the key matches.

-- the key should be an Int
-- let x = lock 27 2
-- print x -- prints *SECRET*
-- print $ unlock 27 x -- prints Just 2
-- unlock 22 x -- returns Nothing
-- let y = fmap (+2) x
-- print y -- prints *SECRET*
-- print $ unlock 27 y -- prints Just 4
-- test: cabal run test-locker -v0
