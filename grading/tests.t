build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 4
  > 73
  > 67
  > 38
  > 33
  > EOF
  75
  67
  40
  33

case 1::

  $ ./cut <<EOF
  > 2
  > 37
  > 38
  > EOF
  37
  40
