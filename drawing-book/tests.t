build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 6
  > 2
  > EOF
  1 (no-eol)

case 1::

  $ ./cut <<EOF
  > 5
  > 4
  > EOF
  0 (no-eol)
