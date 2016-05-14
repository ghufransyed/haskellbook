module Ch04 where

{-



-}

awesome = ["Papuchon", "curry", ":)" ]
alsoAwesome = ["Quake", "The Simons"]
allAwesome = [awesome, alsoAwesome]

-- Ex 1
-- type signature of length should be:
-- length :: [a] -> Integer
-- actually is 
-- length :: Foldable t => t a -> Int
-- i.e if t has an instance of Foldable, then it takes an argument
-- of a Foldable of a, and returns and Int 

{-
Ex 2
length [1, 2, 3, 4, 5] => 5
length [(1,2), (2, 3), (3, 4)] => 3
length allAwesome => 2
length (concat allAwesome) => 5

-}

{-
Ex 3, 4
6/3 works 
6 / length [1, 2, 3] does not work, because the result does not give
a fractional Int

length :: Foldable t => t a -> Int
(/) :: Fractional a => a -> a -> a
(div) :: Integral a => a -> a -> a

so 6/ length [1, 2, 3] will not work, because / expects a Fractional
while length returns an Int

However, div takes an Integral argument, and length returns an Integral
So the following will run

(div) 6 (length [1, 2, 3])

can also be run using the infix version:
6 `div` length [1, 2, 3]


Ex 5
2 + 3 == 5 returns a Bool
the result should therefore be True or False

Ex 6
let x = 5
x + 3 == 5

the expression returns a Bool (True or False)

Ex 7
length allAwesome == 2  -- will not run, ambiguous : wrong, ran fine!
length [1, 'a', 3, 'b'] will run, return 4 : wrong! gave error
I think this is because although length can accept [a] i.e. a list of
type a, this means that every element of the list must be of type a

length allAwesome + length awesome should run, return 5 : correct!

(8 == 8) && ('b' < 'a') : should run, return False : correct!

(8 == 8) && 9 : will not run, since 9 is not of type Bool : correct!


Ex 8
see below
-}

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

{-
Ex 9
-}

myAbs :: Integer -> Integer
myAbs x = if x < 0 then -x else x

-- Ex 10
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))

-- further exercises:

x = (+)
g xs =  w `x` 1 where w = length xs -- variables start with lowercase, constructors with uppercase 
-- since x is assigned an invocation of + using (+), it becomes a prefix
-- operator. It therefore needs to have the backtick operator to be used
-- infix

-- (\ x -> x) "foo"
 
-- (\ xs -> (head xs)) [1, 2, 3]

h (a,  b) = a  -- tuple needs comma between elements
