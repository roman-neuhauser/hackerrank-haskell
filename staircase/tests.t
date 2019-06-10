build::

  $ ghc -v0 -outputdir "$PWD" -o cut "$TESTDIR/$CUT.hs"

case 1::

  $ ./cut <<EOF
  > 6
  > EOF
       #
      ##
     ###
    ####
   #####
  ######

case 4::

  $ ./cut <<EOF
  > 8
  > EOF
         #
        ##
       ###
      ####
     #####
    ######
   #######
  ########
