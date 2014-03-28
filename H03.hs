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

module H03 (elementAt) where

elementAt ls i = ls !! (i - 1)

elementAt' ls i = count ls 1
 where
 count (x:xs) n
  | i == n = x
  | otherwise = count xs (n + 1)

elementAt'' (x:xs) 1 = x
elementAt'' (x:xs) i = elementAt'' xs (i - 1)
elementAt'' _ _ = error "Index out of bounds"

{-
xs elem_at i = xs ! | i - 1

xs elem_at' i =
	Node x xs | count_from n =
		? i = n | x
		? else  | xs count | n + 1
	xs count_from 1

Node x xs | elem_at'' 1 = x
Node x xs | elem_at'' i = xs elem_at'' | i - 1
_ elem_at'' _ = system error "Index out of bounds"
-}
