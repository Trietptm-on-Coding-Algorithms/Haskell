--
-- The function unfold p h t x produces the empty list if the
-- predicate p x is True. Otherwise, it produces a
-- non-empty list by applying the function h x to give the head
-- of the generated list, and the function t x to generate another
-- another seed that is recursively processed by unfold to produce
-- the tail of the generated list.
module Unfold where

unfold :: (b -> Bool) -> (b -> a) -> (b -> b) -> b -> [a]
unfold p h t x
    | p x = []
    | otherwise = h x : unfold p h t (t x)
