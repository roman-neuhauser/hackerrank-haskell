build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 0::

  $ ./cut <<EOF
  > 8
  > 6676 3216 4063 8373 423 586 8850 6762
  > EOF
  6762 8850 586 423 8373 4063 3216 6676 (no-eol)
