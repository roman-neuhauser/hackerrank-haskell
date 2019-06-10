build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 9
  > 10 5 20 20 4 5 2 25 1
  > EOF
  2 4 (no-eol)

case 1::

  $ ./cut <<EOF
  > 10
  > 3 4 21 36 10 28 35 5 24 42
  > EOF
  4 0 (no-eol)
