build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 5 4
  > 1 2 3 4 5
  > EOF
  5 1 2 3 4 (no-eol)

case 1::

  $ ./cut <<EOF
  > 20 10
  > 41 73 89 7 10 1 59 58 84 77 77 97 58 1 86 58 26 10 86 51
  > EOF
  77 97 58 1 86 58 26 10 86 51 41 73 89 7 10 1 59 58 84 77 (no-eol)
