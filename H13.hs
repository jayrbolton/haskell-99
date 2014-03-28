{-
13.
3/28/14
jayrbolton

(**) Run-length encoding of a list (direct solution).

Implement the so-called run-length encoding data compression method directly. I.e. don't explicitly create the sublists containing the duplicates, as in problem 9, but only count them. As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.

Example:

* (encode-direct '(a a a a b c c a a d e e e e))
((4 A) B (2 C) (2 A) D (4 E))
Example in Haskell:

P13> encodeDirect "aaaabccaadeeee"
[Multiple 4 'a',Single 'b',Multiple 2 'c',
 Multiple 2 'a',Single 'd',Multiple 4 'e']
-}

module H12 (encodeDirect) where
import H11 (Encoded(..))

encodeDirect xs = map encode $ foldr countEach [] xs
	where
	countEach y [] = [(1, y)]
	countEach y ((n, x):xs)
		| y == x = (n + 1, y):xs
		| otherwise = (1, y):(n, x):xs
	encode (1, x) = Single x
	encode (n, x) = Multiple n x
