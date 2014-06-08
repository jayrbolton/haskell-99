{-
24.
4/5/14
jayrbolton

Generate a random permutation of the elements of a list.

Example:

Prelude System.Random>rnd_permu "abcdef"
Prelude System.Random>"badcef"
-}

module H25 (rnd_permu) where
import System.Random

rnd_permu [] = return []
rnd_permu (x:xs) = do
	rest <- rnd_permu xs
	rand <- getStdRandom $ randomR (0, length xs)
	let (first, end) = splitAt rand rest
	return $ first ++ (x : end)
