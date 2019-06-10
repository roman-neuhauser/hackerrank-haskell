build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 5
  > 0 0 -1 1 1
  > EOF
  0.400000
  0.200000
  0.400000

case 1::

  $ ./cut <<EOF
  > 6
  > -4 3 -9 0 4 1
  > EOF
  0.500000
  0.333333
  0.166667
