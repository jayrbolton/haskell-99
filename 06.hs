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
is_palindrome xs = xs xs reversed eq?

1 2 3 4 first # 1
1 2 3 4 last # 4

# linebreak clears the stack?
# '=' pushes to the module stack? (ie. file-level) -- which is a dictionary
# stack? (ie. stack of key/values)

# Scope stack based on indentation level
# Clear stack on newline (except for '=')

x y 1 2 3 x +

is_palindrome' xs =
	0 xs length 1 - rec
	rec x y = 
		| x y eq?										= True
		| xs x index xs y index eq? = x 1 + y 1 - rec
		| otherwise									= False

rec x y
	| x y eq?										= True
	| xs x index xs y index eq? = x 1 + y 1 - rec
	| otherwise									= False

0 xs len 1 - rec

let isPalindrome xs
	let rec x y
		if x y | True
		if | xs at x
| rec 0 | subtract | length xs | 1
		
x 1 

# prefix stack
# function stack (lazy) and value stack

1 2 3 4 # [1 2 3 4]

first # {first}

id 1 # {id} [1] => {} [1]
# forall id: a -> a

id 1 2 # {id} [1 2] => {} [1 2]

+ 1 2 # {+} [1 2] => {+} [1 2] => {(+ 1)} [2] => {} [3] 
# given +: Int -> Int -> Int

# basic assignment
 
let x 1

# | or new indentation level is new stack

# it's not postfix, prefix, infix, or even mixfix
# it's *crazy-fix*

# an environment is a function stack, a value stack, and a dictionary of assignments

+ 1 2
# {+}
# {+} [1]
# {(+ 1)}
# {(+ 1)} [2]
# {(+ 1 2)}
# [3]

1 + 2
# [1]
# {+} [1]
# {(+ 1)}
# {(+ 1)} [2]
# {(+ 1 2)}
# [3]

1 2 +
# [1]
# [1 2]
# {+} [1 2]
# {(+ 1)} [2]
# {(+ 1 2)}
# [3]

# assignment

let x 1
# {let}
# {let} [x]
# {(let x)}
# {(let x)} [1]
# {(let x 1)}
# |x:1|

x 1 let
# [x]
# [x 1]
# [x 1] {let}
# [1] {(let x)}
# {(let x 1)}
# |x:1|

# functions

|x y| x + y
# [with]
# [with x y]
# [(with [x])]
# [(with [x]) y]
# [(with [x y])]
# [(with [x y]) do]
# [(with [x y]) do]
# [(with [x y] do])]
# [(with [x y] do) x]
# [(with [x y] do [x])]
# [(with [x y] do [x]) +]
# [(with [x y] do [x +])]
# [(with [x y] do [(+ x)])]
# [(with [x y] do [(+ x)]) y]
# [(with [x y] do [(+ x) y])]
# [(with [x y] do [(+ x y)])]

add :: [(all Int) (all Int)

1 + 2 + 3
# [1 + 2 + 3]
# [(+ 1) 2 + 3]
# [(+ 1 2) + 3]
# [3 + 3]
# [(+ 3) 3]
# [(+ 3 3)]
# [6]

+ 1 2 3 +
# [+ 1 2 3 +]
# [(+ 1) 2 3 +]
# [(+ 1 2) 3 +]
# [3 3 +]
# [(3 3 +)]
# [6]

let add x y :with z q = x + y + z + q

[ 1 2 3 4 ] 

add 1 2 :with 3 4
# [add 1 2 with 3 4]
# [(add 1) 2 with 3 4]
# [(add 1 2) with 3 4]
# [(add 1 2 with) 3 4]
# [(add 1 2 with 3) 4]
# [(add 1 2 with 3 4)]
# [(add 1 2 with 3 4)]
# [(add 1 2 with 3 4)]

let add |x y| x + y
# ==
add x y = x + y
# ==
add = +

:list_begin xs :list_end
(: xs :)

let is_palindrome xs = eq? xs reverse xs
# [xs?]
# [
# {let [is_palindrome xs) eq? reverse [xs xs]}
# 

-}
