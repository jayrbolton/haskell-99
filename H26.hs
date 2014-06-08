{-
26.
6.7.2014
jayrbolton

(**) Generate the combinations of K distinct objects chosen from the N elements of a list

In how many ways can a committee of 3 be chosen from a group of 12 people? We all know that there are C(12,3) = 220 possibilities (C(N,K) denotes the well-known binomial coefficients). For pure mathematicians, this result may be great. But we want to really generate all the possibilities in a list.

Example in Haskell:
> combinations 3 "abcdef"
["abc","abd","abe",...]
-}

module H26 (combinations) where
import System.Random

combinations 0 _ = [[]]
combinations _ [] = []
combinations n xs = [xs !! i : x | i <- [0..length xs - 1], x <- combinations (n - 1) (drop (i + 1) xs)]

combinations' 0 _ = [[]]
combinations' _ [] = []
combinations' n (x:xs) = map (x:) (combinations' (n - 1) xs) ++ combinations' n xs
