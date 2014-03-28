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

module H01 (myLast) where

myLast = last 

myLast' (x:[]) = x
myLast' (x:xs) = myLast' xs

{-
\(Elem x) last | x
\(Node x xs) last | xs last
 -}
