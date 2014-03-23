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
