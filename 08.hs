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

compress (x:[]) = [x]
compress (x:y:xs)
	| x == y = compress (y:xs)
	| otherwise = x:(compress (y:xs))
