build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 10 2 3
  > 3 1
  > 5 2 8
  > EOF
  9 (no-eol)

case 1::

  $ ./cut <<EOF
  > 5 1 1
  > 4
  > 5
  > EOF
  -1 (no-eol)
