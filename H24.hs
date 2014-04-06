{-
24.
4/5/14
jayrbolton

Lotto: Draw N different random numbers from the set 1..M.

Example:

* (rnd-select 6 49)
(23 1 17 33 21 37)
Example in Haskell:

Prelude System.Random> diff_select 6 49
Prelude System.Random> [23,1,17,33,21,37]
-}

module H24 (diffSelect) where

import H23 (rndSelect)
import Data.List (nub)
import System.Random

diffSelect n m = take n $ nub $ rndSelect [1..m]

{-
let filter -> [p Empty] Empty
let filter -> [p (x:xs)]
	let rest | filter p xs
	if (p | head xs)
		cons x rest
		rest
-}
