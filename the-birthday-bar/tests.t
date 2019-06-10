build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 5
  > 1 2 1 3 2
  > 3 2
  > EOF
  2 (no-eol)

case 1::

  $ ./cut <<EOF
  > 6
  > 1 1 1 1 1 1
  > 3 2
  > EOF
  0 (no-eol)
