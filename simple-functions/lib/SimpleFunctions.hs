module SimpleFunctions where

-- Simple Functions Assignment
-- Elizabeth Nittler
-- February 10, 2023

exampleSum :: Int -> Int -> Int
exampleSum x y = x + y

-- Type Signatures are required for all functions!

-- 1. Define a function called basicMath that takes a pair of Integrals (whole numbers) and returns a tuple with the sum, difference, product and quotient.
-- For example basicMath 8 2 should return (10, 6, 16, 4). 
-- Be careful with the division one!
-- test command: cabal run basic-math-test -v0

basicMath :: Integral a => a -> a -> (a, a, a, a)
basicMath x y = ((x + y), (x - y), (x * y), (div x y)) 

-- 2. Define a function named factors that returns a list of all the factors of the number given.
-- For example, factors 12 returns [1,2,3,4,6,12].
-- Hint: this is do-able reasonably if you use a list comprehension.
-- test command: cabal run factors-test -v0

factors :: Integral a => a -> [a]
factors x = [ y | y <- [1 .. x], if mod x y == 0 then True else False]

-- 3. Write a function compute that takes a tuple with an operator (given as a single character)
-- and two numbers and returns the value from computing the result of that operation on the given numbers.
-- For example, compute ('+',3,4) should return 7.
-- test command: cabal run compute-test -v0

compute :: Integral a => (Char, a, a) -> a
compute (x, y, z)
    | x == '+' = (+) y z
    | x == '-' = (-) y z
    | x == '*' = (*) y z
    | x == '/' = div y z
    | x == 'm' = mod y z            
    | otherwise = error "Error: make sure a valid operator is being used - compute supports the use of +, -, *, /, and m for modulo." 


-- 4. Write a function corn that accepts the number of ears of corn the customer is purchasing and outputs the total price.
-- The corn is priced according to the following four statements:
-- If the customer is purchasing less than a dozen ears, the price per ear is $0.50.
-- If the customer is purchasing 12 to 23 ears, the price per ear is $0.45.
-- If the customer is purchasing 24 to 35 ears, the price per ear is $0.40.
-- If the customer is purchasing more than 35 ears, the price per ear is $0.35.
-- test command: cabal run corn-test -v0

corn :: (Real a, Fractional b) => a -> b
corn x
    | x < 12 = (realToFrac x) * 0.50
    | (x >= 12) && (x <= 23) = (realToFrac x) * 0.45
    | (x >= 24) && (x <= 35) = (realToFrac x) * 0.40
    | x > 35 = (realToFrac x) * 0.35
    | otherwise = error "Error: make sure you have entered a valid amount of corn."   
