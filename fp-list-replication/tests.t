build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 2
  > 1
  > 2
  > 3
  > 4
  > 5
  > 6
  > 7
  > 8
  > 9
  > 10
  > EOF
  1
  1
  2
  2
  3
  3
  4
  4
  5
  5
  6
  6
  7
  7
  8
  8
  9
  9
  10
  10

case 1::

  $ ./cut <<EOF
  > 5
  > 1
  > 2
  > 3
  > 4
  > 5
  > EOF
  1
  1
  1
  1
  1
  2
  2
  2
  2
  2
  3
  3
  3
  3
  3
  4
  4
  4
  4
  4
  5
  5
  5
  5
  5
