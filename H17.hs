{-
17.
3/28/14
jayrbolton

(*) Split a list into two parts; the length of the first part is given.

Do not use any predefined predicates.

Example:

* (split '(a b c d e f g h i k) 3)
( (A B C) (D E F G H I K))
Example in Haskell:

*Main> split "abcdefghik" 3
("abc", "defghik")
-}

module H17 (split) where

myTake 0 _ = []
myTake _ [] = []
myTake i (x:xs) = x : myTake (i - 1) xs

myDrop 0 xs = xs
myDrop _ [] = []
myDrop i (_:xs) = myDrop (i - 1) xs

split xs i = (myTake i xs, myDrop i xs)

-- direct recursion

split' (x:xs) n | n > 0 = (x:ys, zs)
	where
	(ys, zs) = split' xs (n - 1)
split' xs _ = ([], xs)
