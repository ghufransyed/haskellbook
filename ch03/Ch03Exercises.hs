module null.Ch03Exercises where


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

-}
