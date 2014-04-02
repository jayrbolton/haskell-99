{-
20.
3/28/14
jayrbolton

(*) Remove the K'th element from a list.

Example in Prolog:

?- remove_at(X,[a,b,c,d],2,R).
X = b
R = [a,c,d]
Example in Lisp:

* (remove-at '(a b c d) 2)
(A C D)
(Note that this only returns the residue list, while the Prolog version also returns the deleted element.)

Example in Haskell:

*Main> removeAt 2 "abcd"
('b',"acd")
-}

module H20 (removeAt) where

removeAt n xs = (elem, rest)
	where
	elem = xs !! (n - 1)
	rest = take (n - 1) xs ++ drop n xs

removeAt' n = (\(xs, ys) -> (last xs, init xs ++ ys)) . splitAt n

{-
remove_at: n ->
 splitAt n
 fst= at 0 last_elem
 snd= at 0 init ++ | at 1

'abcdef' remove_at 3
(# 'c' 'abdef')

Pair: x y | fst: x | snd: y

-}
