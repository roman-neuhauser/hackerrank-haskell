build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 5 4
  > 1 6 3 5 2
  > EOF
  2 (no-eol)

case 1::

  $ ./cut <<EOF
  > 5 7
  > 2 5 4 5 2
  > EOF
  0 (no-eol)
