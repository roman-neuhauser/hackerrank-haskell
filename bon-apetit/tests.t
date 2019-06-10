build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 4 1
  > 3 10 2 9
  > 12
  > EOF
  5 (no-eol)

case 6::

  $ ./cut <<EOF
  > 4 1
  > 3 10 2 9
  > 7
  > EOF
  Bon Appetit (no-eol)
