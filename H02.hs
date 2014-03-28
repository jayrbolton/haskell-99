{-
2.
3/22/14
jayrbolton

(*) Find the last but one element of a list.

(Note that the Lisp transcription of this problem is incorrect.)

Example in Haskell:

Prelude> myButLast [1,2,3,4]
3
Prelude> myButLast ['a'..'z']
'y'
-}

module H02 (myButLast) where

myButLast = last . init

myButLast' (x:xs)
 | length xs == 1 = x
 | otherwise = myButLastR xs

{-
xs but_last = xs init last

Node x Elem y | but_last' = x
Node x xs | but_last' = xs but_last'
-}
