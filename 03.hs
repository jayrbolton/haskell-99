{-
3.
3/22/14
jayrbolton

(*) Find the K'th element of a list. The first element in the list is number 1.

Example:

* (element-at '(a b c d e) 3)
c
Example in Haskell:

Prelude> elementAt [1,2,3] 2
2
Prelude> elementAt "haskell" 5
'e'
-}

module Three (elementAt) where

elementAt ls i = ls !! (i - 1)

elementAt' ls i = count ls 1
 where
 count (x:xs) n
  | i == n = x
  | otherwise = count xs (n + 1)

elementAt'' (x:xs) 1 = x
elementAt'' (x:xs) i = elementAt'' xs (i - 1)
elementAt'' _ _ = error "Index out of bounds"
