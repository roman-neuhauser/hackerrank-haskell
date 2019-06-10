build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 2 3
  > 2 4
  > 16 32 96
  > EOF
  3 (no-eol)

case 1::

  $ ./cut <<EOF
  > 10 10
  > 100 99 98 97 96 95 94 93 92 91
  > 1 2 3 4 5 6 7 8 9 10
  > EOF
  0 (no-eol)
