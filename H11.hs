{-
11.
3/28/14
jayrbolton

(*) Modified run-length encoding.

Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.

Example:

* (encode-modified '(a a a a b c c a a d e e e e))
((4 A) B (2 C) (2 A) D (4 E))
Example in Haskell:

P11> encodeModified "aaaabccaadeeee"
[Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']
-}

module H11 (encodeModified, Encoded(..)) where
import H10 (encode)

data Encoded a = Multiple Int a | Single a
	deriving(Show)

-- encodedModified :: String -> Encoded
encodeModified s = map convert $ encode s
	where
	convert (c, 1) = Single c
	convert (c, n) = Multiple n c

{-
\s encodeModified =
	\(c, 1) convert = Single c
	\(c, n) convert = Multiple n c
	s encode map convert
-}
