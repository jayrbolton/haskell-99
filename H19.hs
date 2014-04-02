{-
19.
3/28/14
jayrbolton

(**) Rotate a list N places to the left.

Hint: Use the predefined functions length and (++).

Examples:

* (rotate '(a b c d e f g h) 3)
(D E F G H A B C)

* (rotate '(a b c d e f g h) -2)
(G H A B C D E F)
Examples in Haskell:

*Main> rotate ['a','b','c','d','e','f','g','h'] 3
"defghabc"
 
 *Main> rotate ['a','b','c','d','e','f','g','h'] (-2)
 "ghabcdef"
-}

module H19 (rotate) where

rotate xs n
	| n < 0         = rotate xs (n + length xs)
	| length xs < n = xs
	| otherwise     = rest ++ first
	where (first, rest) = splitAt n xs
