{-
16.
3/28/14
jayrbolton

(**) Drop every N'th element from a list.

Example:

* (drop '(a b c d e f g h i k) 3)
(A B D E G H K)
Example in Haskell:

*Main> dropEvery "abcdefghik" 3
"abdeghk"
-}

module H16 (dropEvery) where

dropEvery xs n = rec xs n 1
	where
	rec [] _ _ = []
	rec (x:xs) n count
	 | count `mod` n == 0 = rec xs n (count + 1)
	 | otherwise = x : rec xs n (count + 1)

dropEvery' xs n
	| length xs < n = xs
	| otherwise = take (n - 1) xs ++ dropEvery' (drop n xs) n
