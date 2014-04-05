{-
21.
4/4/14
jayrbolton

Insert an element at a given position into a list.

Example:

* (insert-at 'alfa '(a b c d) 2)
(A ALFA B C D)
Example in Haskell:

P21> insertAt 'X' "abcd" 2
"aXbcd"
-}

module H21 (insertAt) where

insertAt x ys i | i <= 1 = x:ys
insertAt x (y:ys) i = y : insertAt x ys (i - 1)

insertAt' x ys i = take (i-1) ys ++ x : drop (i-1) ys

{- concatenative
insertAt:         # x ys i
	1 -             # x ys h 
	dup             # x ys h h
	pull            # x h ys h
	[dup] dig       # x h ys ys h
	take            # x h ys qs
	pull            # x qs h ys
	drop            # x qs ps
	[[swap] dig] dig# qs x ps
	cons            # qs zs
	append          # ws

insert_at = 1 - dup pull [dup] dig take pull drop [[swap] dig] dig cons append

insert_at = 1 - split rot cons append     # not horrible

mixfix party:

def {insert} x {in} ys {at} i
	: a -> List a -> Int -> List a
	let first last || ys split | - i 1
	append first | push last x

# insert 'x' in "abcdefgh" at 3
# ~> "abxcdefgh"

f x g y
f x | g y         # f x (g y)
f x | g y | z q   # f x (g y) (z q)
f x || g y | z q  # f x (g y (z q))
-}

insertAt'' x ys i = first ++ x:last
	where (first, last) = splitAt (i-1) ys


insertAt''' elem ys i = fst $ foldl fun ([], 1) ys 
	where fun (xs, n) x | n == i = (xs ++ [elem,x], n+1)
	      fun (xs, n) x = (xs ++ [x], n+1)
