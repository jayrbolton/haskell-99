{-
18.
3/28/14
jayrbolton

(**) Extract a slice from a list.

Given two indices, i and k, the slice is the list containing the elements between the i'th and k'th element of the original list (both limits included). Start counting the elements with 1.

Example:

* (slice '(a b c d e f g h i k) 3 7)
(C D E F G)
Example in Haskell:

*Main> slice ['a','b','c','d','e','f','g','h','i','k'] 3 7
"cdefg"
-}

module H18 (slice) where

slice xs begin end = take (begin - 1) $ drop (end - begin + 1) xs

slice' xs _ 0 = [] -- drop end
slice' (x:xs) 1 end = x : slice' xs 1 (end - 1) -- take middle
slice' (x:xs) begin end = slice' xs (begin - 1) (end - 1) -- drop beginning
