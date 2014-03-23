{-
9.
3/22/14
jayrbolton

(**) Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.

Example:

* (pack '(a a a a b c c a a d e e e e))
((A A A A) (B) (C C) (A A) (D) (E E E E))
Example in Haskell:

*Main> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
["aaaa","b","cc","aa","d","eeee"]
-}

module Nine (pack) where

pack xs = foldr f [] xs
	where
	f y [] = [[y]]
	f y (x:xs)
		| y == head x = (y:x):xs
		| otherwise = [y]:x:xs

{-
xs pack =
	[] fun y = [[y]]
	x:xs fun y =
		case | y eq? | x head => y:x:|xs
		else                  => [y]:x:xs
	xs foldr fun []
-}
