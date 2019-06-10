build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 9
  > 10 20 20 10 10 30 50 10 20
  > EOF
  3 (no-eol)

case 1::

  $ ./cut <<EOF
  > 15
  > 6 5 2 3 5 2 2 1 1 5 1 3 3 3 5
  > EOF
  6 (no-eol)
