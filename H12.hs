{-
12.
3/28/14
jayrbolton

(**) Decode a run-length encoded list.

Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.

Example in Haskell:

P12> decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']
"aaaabccaadeeee"
-}

module H12 (decodeModified) where
import H11 (Encoded(..))

decodeModified xs = concat $ map decode xs
	where
	decode (Multiple n x) = map (const x) [1..n]
	decode (Single x) = [x]
