build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 8
  > 15
  > 22
  > 1
  > 10
  > 6
  > 2
  > 18
  > 18
  > 1
  > EOF
  15
  1
  6
  18
  1
