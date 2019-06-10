build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 1 2 3 4 5
  > EOF
  10 14 (no-eol)
