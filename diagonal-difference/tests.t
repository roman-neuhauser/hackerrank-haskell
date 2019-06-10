build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 3
  > 11 2 4
  > 4 5 6
  > 10 8 -12
  > EOF
  15 (no-eol)

case 1::

  $ ./cut <<EOF
  > 4
  > -1 1 -7 -8
  > -10 -8 -5 -2
  > 0 9 7 -1
  > 4 4 -2 1
  > EOF
  1 (no-eol)
