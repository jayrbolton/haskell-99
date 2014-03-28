{-
14.
3/28/14
jayrbolton

(*) Duplicate the elements of a list.

Example:

* (dupli '(a b c c d))
(A A B B C C C C D D)
Example in Haskell:

> dupli [1, 2, 3]
[1,1,2,2,3,3]
-}

module H14 (dupli) where

dupli = foldr (\x xs -> x:x:xs) []

dupli' [] = []
dupli' (x:xs) = x:x:dupli xs

dupli'' xs = concat [[x,x] | x <- xs] 
