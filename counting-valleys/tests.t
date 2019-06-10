build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 8
  > UDDDUDUU
  > EOF
  1 (no-eol)

case 14::

  $ ./cut <$TESTDIR/input14.txt
  718 (no-eol)
