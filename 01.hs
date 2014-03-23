{-
1.
3/22/14
jayrbolton

(*) Find the last element of a list.

(Note that the Lisp transcription of this problem is incorrect.)

Example in Haskell:

Prelude> myLast [1,2,3,4]
4
Prelude> myLast ['x','y','z']
'z'
-}

module One (myLast) where

myLast = last 

myLast' (x:[]) = x
myLast' (x:xs) = myLast' xs
