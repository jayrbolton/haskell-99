{-
23.
4/5/14
jayrbolton

Extract a given number of randomly selected elements from a list.

Example:

* (rnd-select '(a b c d e f g h) 3)
(E D A)
Example in Haskell:

Prelude System.Random>rnd_select "abcdefgh" 3 >>= putStrLn
eda
-}

module H23 (rndSelect) where

import System.Random
import Control.Monad (replicateM)

rndSelect [] _ = return []
rndSelect xs n = generate >>= \is -> return [xs !! i | i <- is]
	where
	range = (0, (length xs) - 1)
	generate = replicateM n $ getStdRandom $ randomR range
