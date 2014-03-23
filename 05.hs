{-
5.
3/22/14
jayrbolton

(*) Reverse a list.

Example in Haskell:

Prelude> myReverse "A man, a plan, a canal, panama!"
"!amanap ,lanac a ,nalp a ,nam A"
Prelude> myReverse [1,2,3,4]
[4,3,2,1]
-}

module Five (myReverse) where

myReverse = reverse

myReverse' = rec []
 where
 rec rev [] = rev
 rec rev (x:xs) = rec (x:rev) xs

myReverse'' [] = []
myReverse'' (x:xs) = myReverse xs ++ [x]
