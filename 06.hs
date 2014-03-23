{-
6.
3/22/14
jayrbolton

(*) Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).

Example in Haskell:

*Main> isPalindrome [1,2,3]
False
*Main> isPalindrome "madamimadam"
True
*Main> isPalindrome [1,2,4,8,16,8,4,2,1]
True
-}

module Six (isPalindrome) where

isPalindrome xs = xs == reverse xs

isPalindrome' xs =
	let halved = length xs `div` 2
			first = take (1 + halved) xs
			last = reverse (drop halved xs)
	in first == last

isPalindrome'' xs = rec 0 (length xs - 1)
	where
	rec x y 
		| x == y = True
		| xs !! x == xs !! y = rec (x + 1) (y - 1)
		| otherwise = False

{-
xs is_pali = xs eq? | xs reverse

xs is_pali' =
	halved = xs length / 2
	first = xs take | 1 + halved
	last = xs drop halved reverse
	first eq? last
-}
