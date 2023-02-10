module SimpleFunctions where


exampleSum :: Int -> Int -> Int
exampleSum x y = x + y

-- Type Signatures are required for all functions!

-- 1. Define a function called basicMath that takes a pair of Integrals (whole numbers) and returns a tuple with the sum, difference, product and quotient.
-- For example basicMath 8 2 should return (10, 6, 16, 4). 
-- Be careful with the division one!
-- test command: cabal run basic-math-test -v0

-- 2. Define a function named factors that returns a list of all the factors of the number given.
-- For example, factors 12 returns [1,2,3,4,6,12].
-- Hint: this is do-able reasonably if you use a list comprehension.
-- test command: cabal run factors-test -v0

-- 3. Write a function compute that takes a tuple with an operator (given as a single character)
-- and two numbers and returns the value from computing the result of that operation on the given numbers.
-- For example, compute ('+',3,4) should return 7.
-- test command: cabal run compute-test -v0

-- 4. Write a function corn that accepts the number of ears of corn the customer is purchasing and outputs the total price.
-- The corn is priced according to the following four statements:
-- If the customer is purchasing less than a dozen ears, the price per ear is $0.50.
-- If the customer is purchasing 12 to 23 ears, the price per ear is $0.45.
-- If the customer is purchasing 24 to 35 ears, the price per ear is $0.40.
-- If the customer is purchasing more than 35 ears, the price per ear is $0.35.
-- test command: cabal run corn-test -v0

corn :: (Floating a, Ord a) => a -> a 
corn x 
  | x < 12 = x * 0.50
  | x >= 12, x <= 23 = x * 0.45
  | x >= 24, x <= 35 = x * 0.40
  | otherwise = x * 0.35


basicMath :: (Integral x) => x -> x -> (x, x, x, x)
basicMath x y = (x + y, x - y, x * y, div x y)

factors :: Integral x => x -> [x]
factors y = [x | x <- [1..y], y `mod` x == 0]

compute :: (Char,Double,Double) -> Double
compute ('-', x, y) = x - y 
compute ('+', x, y) = x + y 
compute ('*', x, y) = x * y 
