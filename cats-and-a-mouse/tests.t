build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 2
  > 1 2 3
  > 1 3 2
  > EOF
  Cat B
  Mouse C

case 1::

  $ ./cut <$TESTDIR/input01.txt >out

  $ diff -u $TESTDIR/output01.txt out
