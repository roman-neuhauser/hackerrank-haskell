build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 6 3
  > 1 3 2 6 1 2
  > EOF
  5 (no-eol)

case 1::

  $ ./cut <<EOF
  > 2 2
  > 8 10
  > EOF
  1 (no-eol)
