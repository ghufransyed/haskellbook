module Ex01 where

-- area d = pi * (r * r) -- d is the named argument inside area function
-- r = d/2 -- r is a global variable, but its assignment refers to d which is out of scope

area d = pi * (r * r)
  where r = d/2
