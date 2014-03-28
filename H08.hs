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

module H08 (compress) where

compress (x:[]) = [x]
compress (x:y:xs)
	| x == y = compress (y:xs)
	| otherwise = x:(compress (y:xs))

{-
x:[] | compress = [x]
x:y:xs | compress =
	case x == y | y:xs compress
	else        | x: | y:xs compress
-}
