{-
22.
4/4/14
jayrbolton

Create a list containing all integers within a given range.

Example:

* (range 4 9)
(4 5 6 7 8 9)
Example in Haskell:

Prelude> range 4 9
[4,5,6,7,8,9]

-}

module H22 (range) where

-- basic
range i j = [i..j]

-- both dirs recursively
range' i j
	| i == j  = [i]
	| i < j   = i : range' (i + 1) j 
	| i > j   = i : range' (i - 1) j 

-- with scanl both dirs
range'' i j = scanl op i $ replicate diff 1
	where
	op = if i < j then (+) else (-)
	diff = abs $ i - j
