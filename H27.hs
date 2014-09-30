{-
27.
9.18.2014
jayrbolton

Group the elements of a set into disjoint subsets.

a) In how many ways can a group of 9 people work in 3 disjoint subgroups of 2, 3 and 4 persons? Write a function that generates all the possibilities and returns them in a list.

You may find more about this combinatorial problem in a good book on discrete mathematics under the term "multinomial coefficients".

Example in Haskell:

P27> group [2,3,4] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"]
[[["aldo","beat"],["carla","david","evi"],["flip","gary","hugo","ida"]],...]
(altogether 1260 solutions)
 
27> group [2,2,5] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"]
[[["aldo","beat"],["carla","david"],["evi","flip","gary","hugo","ida"]],...]
(altogether 756 solutions)
-}

module H27 (group) where
import Data.List
import H26 (combinations)

groupz _ [] = [[]]
groupz [] _ = [[]]
groupz (g:gs) xs = [first : rest | first <- combinations g xs, rest <- groupz gs (xs \\ first)]

{-
kireji:

let group [_ []] [] --
let group [[] _] [] --
let group [[g:gs] xs]
	comprehend (cons first rest) ::
		first | combinations g xs
		rest  | group gs (- xs first)
---
-}
