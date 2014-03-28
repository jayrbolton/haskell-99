{-
15.
3/28/14
jayrbolton

(**) Replicate the elements of a list a given number of times.

Example:

* (repli '(a b c) 3)
(A A A B B B C C C)
Example in Haskell:

> repli "abc" 3
"aaabbbccc"

-}

module H15 (repli) where

repli xs n = foldr (\x xs -> replicate n x ++ xs) [] xs

repli' [] _ = []
repli' (x:xs) n = replicate n x ++ repli' xs n

repli'' xs n = concatMap (replicate n) xs
