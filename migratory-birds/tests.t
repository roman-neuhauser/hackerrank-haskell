build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 6
  > 1 4 4 4 5 3
  > EOF
  4 (no-eol)

case 5::

  $ ./cut <<EOF
  > 11
  > 1 2 3 4 5 4 3 2 1 3 4
  > EOF
  3 (no-eol)
