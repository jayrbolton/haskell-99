{-
7.
3/22/14
jayrbolton

(**) Flatten a nested list structure.

Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).

Example:

* (my-flatten '(a (b (c d) e)))
(A B C D E)
Example in Haskell:

We have to define a new data type, because lists in Haskell are homogeneous.

 data NestedList a = Elem a | List [NestedList a]
*Main> flatten (Elem 5)
[5]
*Main> flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
[1,2,3,4,5]
*Main> flatten (List [])
[]
-}

-- List [(Elem 5)]

module H07 (flatten) where

data NestedList a = Elem a | List [NestedList a]

flatten (Elem x) = [x]
flatten (List []) = []
flatten (List (x:xs)) = append (flatten x) (flatten (List xs))

append [] ys = ys
append xs [] = xs
append (x:xs) ys = x : append xs ys

-- without any append operation whatsoever, try some extra pattern matching

flatten' = reverse . rec []
	where
	rec acc (List []) = acc
	rec acc (Elem x)  = x : acc
	rec acc (List (x:xs)) = rec (rec acc x) (List xs)

{-
[] flatten = []
[x] flatten = [x]
x:xs flatten = x flatten concat | xs flatten

let flatten

let sum_prod: add | prod Pair
# 1 2 Pair sum_prod 
# -> Pair{1 2}

let sum: fold +
# 1 2 3 4 List sum
# -> 10

fold _ z on Empty = z

fold func z on List = x (fold f z) f

@fold _ z    when Empty = z
with ls let func z = x.func | @fold f z

with Empty
fold f z: z

with List
fold f z: fst | rest fold f z | f

f 5 (g "hello") 3
f (g 3 4)

5 | "hello" g | 3 f

let average : add, div 2.0

f 5 | g "hello" 3

average a b = a + b | / 2.0  

-}
