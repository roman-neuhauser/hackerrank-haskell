build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 6
  > 4 6 5 3 3 1
  > EOF
  3 (no-eol)

case 1::

  $ ./cut <<EOF
  > 6
  > 1 2 2 3 1 2
  > EOF
  5 (no-eol)
