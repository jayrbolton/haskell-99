{-
8.
3/22/14
jayrbolton

(**) Eliminate consecutive duplicates of list elements.

If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

Example:

* (compress '(a a a a b c c a a d e e e e))
(A B C A D E)
Example in Haskell:

> compress "aaaabccaadeeee"
"abcade"
-}

module Eight (compress) where

within _ [] = False
within elem (x:xs)
	| elem == x = True
	| otherwise = within elem xs

-- within x xs = length [y | y <- xs, y == x] > 0

compress xs = rec [] xs
	where
	rec ys [] = ys
	rec ys (x:xs)
		| x `within` ys = rec ys xs 
		| otherwise = rec (ys ++ [x]) xs

compress' ls = foldl check [] ls
	where
	check xs x
	 | x `within` xs = xs
	 | otherwise = xs ++ [x]
