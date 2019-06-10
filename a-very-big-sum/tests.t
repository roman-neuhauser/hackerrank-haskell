build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 5
  > 1000000001 1000000002 1000000003 1000000004 1000000005
  > EOF
  5000000015 (no-eol)
