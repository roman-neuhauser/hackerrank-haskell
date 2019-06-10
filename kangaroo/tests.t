build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 0 3 4 2
  > EOF
  YES (no-eol)

case 1::

  $ ./cut <<EOF
  > 0 2 5 3
  > EOF
  NO (no-eol)
