.. vim: ft=rst sts=2 sw=2 tw=70
.. default-role:: literal

======================================================================
                        HackerRank in Haskell
======================================================================

i'm using HackerRank_ to learn Haskell.

.. _HackerRank: https://www.hackerrank.com/
HackerRank is a dumpster fire!  problem descriptions are stuffed with
fluff and convoluted.  some challenges are duplicated under multiple
names (`solve-me-first`_, `fp-solve-me-first`_), others come with test
inputs that do not meet the specification (`cavity-map`_ test #22).
my login attempts fail with allegedly wrong username or password
unless i go to the "forgot password" form and back to the login form
(*without* resetting my password)...

i have a submission for `fp-array-of-n-elements`_ consisting of ::

  fn n = [1..n]

which allegedly matches this expected output in test case #0::

  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

.. _`cavity-map`: https://www.hackerrank.com/challenges/cavity-map
.. _`fp-array-of-n-elements`: https://www.hackerrank.com/challenges/fp-array-of-n-elements
.. _`fp-solve-me-first`: https://www.hackerrank.com/challenges/fp-solve-me-first
.. _`solve-me-first`: https://www.hackerrank.com/challenges/solve-me-first

each directory contains one or more implementations (`01.hs`, ...),
plus Cram_-based tests in `tests.t`.  the test data comes from HackerRank.

almost all implementations are `interact`-based::

  main = interact $ ...

i've copied this pattern from HaskellRank_, thanks!

.. _HaskellRank: https://www.youtube.com/playlist?list=PLguYJK7ydFE4aS8fq4D6DqjF6qsysxTnx
.. _Cram: https://bitheap.org/cram/

i'm really happy i can write Haskell `left-to-right`_ through
`Control.Arrow ((>>>))` (like `flip (.)`) and `Data.Function ((&))`
(like `flip ($)`).

.. _`left-to-right`: https://en.wikipedia.org/wiki/Latin_script

i tend to use a mix of applicative and point-free style::

  main = interact $
        words
    >>> tail
    >>> map read
    >>> sum
    >>> show

i find the above more ergonomic than the applicative ::

  main = interact $
    ( \input ->
      show
    $ sum
    $ map (\word -> read word)
    $ tail
    $ words input
    )

i tend to use `Data.Function ((&))` when i have named values, either
from patternmatching on arguments ::

  solve (k: xs) =
      pairs xs
    & map (uncurry zip)
    & concat
    & map (uncurry (+))
    & filter (isMultipleOf k)
    & length

or from naming data in a `where` clause ::

  solve (b: k: d: ksds) =
      sums ks ds
    & sortOn (negate)
    & flip (++) [-1]
    & dropWhile (> b)
    & head
    where
      (ks, ds) = splitAt k ksds

i do not use `let` at all as i find `where` easier to read.

i also avoid `do`.  it invites procedural thinking and naming things.
