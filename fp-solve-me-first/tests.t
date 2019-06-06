build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 2
  > 3
  > EOF
  5 (no-eol)

case 1::

  $ ./cut <<EOF
  > 100
  > 1000
  > EOF
  1100 (no-eol)
