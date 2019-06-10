build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 11
  > 25
  > 18
  > -1
  > 26
  > -20
  > -19
  > 23
  > -24
  > -8
  > EOF
  39 (no-eol)
