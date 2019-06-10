build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 7 11
  > 5 15
  > 3 2
  > -2 2 1
  > 5 -6
  > EOF
  1
  1

case 1::

  $ ./cut <<EOF
  > 2 3
  > 1 5
  > 1 1
  > -2
  > -1
  > EOF
  0
  0

case 2::

  $ ./cut <<EOF
  > 2 3
  > 1 5
  > 1 1
  > 2
  > -2
  > EOF
  1
  1
