{-
4.
3/22/14
jayrbolton

(*) Find the number of elements of a list.

Example in Haskell:

Prelude> myLength [123, 456, 789]
3
Prelude> myLength "Hello, world!"
13
-}

module Four (myLength) where

myLength = length

myLength' = count 0
 where
 count n [] = n
 count n (x:xs) = count (n + 1) xs

myLength'' [] = 0
myLength'' (_:xs) = 1 + myLength'' xs

myLength''' xs = sum $ map (const 1) xs

-- my favorite:
myLength'''' = fst . last . zip [1..]

{-
xs len = xs length

xs len' =
	Empty count n = n
	Node x xs | count n = xs count | n + 1
	xs count 0

Empty len'' = 0
Node _ xs | len'' = 1 + xs len''

xs len''' = xs map const 1 | sum

xs len'''' = xs zip [1..] last fst
-}
