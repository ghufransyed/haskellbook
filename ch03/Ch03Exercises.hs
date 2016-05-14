module Ch03Exercises where


{-
Question 1

a) concat [[1, 2, 3] , [4, 5, 6]] -- will not run 
   concat [[1, 2, 3]   [4, 5, 6]] -- will run (comma removed)
   
b) ++ [1, 2, 3] [4, 5, 6] -- will not run (needs function invoc brackets)
  (++) [1, 2, 3] [4, 5, 6] -- will run
  
c) 
(++) "hello" " world" -- will run
    
d) ["hello" ++ " world] -- will run, list literal?
did not run, as world double quote is not closed
["hello" ++ " world"] once corrected, it does run and is a list literal

e) 4 !! "hello" -- will not run, type error
"hello" !! 4 will run, returning 'o'

f) (!!) "hello" 4 -- should run, using function invocation to use 
infix operator as prefix operator

g) take "4 lovely" will not run (no integer argument given)
take 4 "lovely" will run

h) take 3 "awesome" will run

Question 2
concat [[1 * 6], [2 * 6], [3 * 6]] => [6 12 18]
"rain" ++ drop 2 "elbow" => "rainbow"
10 * head [1, 2, 3] => 10
(take 3 "Julie) ++ (tail "yes") => "Jules"
concat [tail [1,2,3], tail [4, 5, 6], tail [7, 8, 9]] =>
    [2, 3, 5, 6, 8, 9]

-}

addBang :: [Char] -> [Char]
addBang s = s ++ "!"

fifth :: [a] -> a
fifth s = s !! 4

dropNine :: [a] -> [a]
dropNine s = drop 9 s

