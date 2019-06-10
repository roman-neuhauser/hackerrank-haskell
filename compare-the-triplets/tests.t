build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 5 6 7
  > 3 6 10
  > EOF
  1 1 (no-eol)

case 1::

  $ ./cut <<EOF
  > 1 2 3
  > 1 2 3
  > EOF
  0 0 (no-eol)

case 2::

  $ ./cut <<EOF
  > 6 8 12
  > 7 9 15
  > EOF
  0 3 (no-eol)
