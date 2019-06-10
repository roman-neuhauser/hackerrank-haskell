build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 4
  > 3 2 1 3
  > EOF
  2 (no-eol)

case 1::

  $ ./cut <<EOF
  > 10
  > 18 90 90 13 90 75 90 8 90 43
  > EOF
  5 (no-eol)
