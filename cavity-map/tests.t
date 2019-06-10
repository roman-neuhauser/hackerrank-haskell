build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 4
  > 1112
  > 1912
  > 1892
  > 1234
  > EOF
  1112
  1X12
  18X2
  1234

case 1::

  $ ./cut <<EOF
  > 1
  > 9
  > EOF
  9

case 2::

  $ ./cut <<EOF
  > 2
  > 11
  > 11
  > EOF
  11
  11

case 3::

  $ ./cut <<EOF
  > 2
  > 12
  > 11
  > EOF
  12
  11

case 6::

  $ ./cut <$TESTDIR/input06.txt >out

  $ diff -u $TESTDIR/output06.txt out
