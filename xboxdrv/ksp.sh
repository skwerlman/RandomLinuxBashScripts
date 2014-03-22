#!/bin/bash
cd ~/xd-ksp                                                                       # Enter the KSP xdrv folder
XDRVS=($(ls *.xdrv 2>/dev/null))                                                  # Find all files ending in .xdrv, ignoring errors
XBDRVS=($(ls *.xboxdrv 2>/dev/null))                                              # Find all files ending in .xboxdrv, ignoring errors
OLDIFS=$IFS                                                                       # Back up old IFS, as we're overwriting it
IFS=$'\n'                                                                         # Set IFS to 'newline' so it's compatible with our next command
XDRVS=(`for R in "${XDRVS[@]}" "${XBDRVS[@]}" ; do echo "$R" ; done | sort -du`)  # Concatenate the two lists of files
IFS=$OLDIFS                                                                       # Restore the old IFS
echo Found ${#XDRVS[@]} potential modes in $(dirs).                               # Let the user know how many configs were found
XSTRING="sudo xboxdrv -s --quiet"                                                 # Initialize the executable string
for (( i = 0 ; i < ${#XDRVS[@]} ; i++ )) do                                       # Dynamically generate an xboxdrv command that adds all available configs as config options
  echo "Adding mode $(($i + 1)): ${XDRVS[$i]}"                                    # Let the user know what we're doing, and with what
  if [ ! $i -eq 0 ]; then                                                         # If we aren't at the end of the list of files, then
    XSTRING="$XSTRING --next-config"                                              # Add the '--next-config' option
  fi                                                                              # End if
  XSTRING="$XSTRING -l $(($i + 6)) -c ${XDRVS[$i]}"                               # Add the current element of $XDRVS to the executable string with the proper formatting
done                                                                              # End for
echo $XSTRING                                                                     # Let the dev know what we're going to run
cd sh                                                                             # Enter the folder xd-ksp/sh/
./notify4.sh                                                                      # Tell the user what scheme we're loading first
cd ..                                                                             # Go back one level to xd-ksp/
$XSTRING                                                                          # Run the executable string we've generated

                                                                                  # This *should* work perfectly, and I have not yet found any bugs or issues

                                                                                  # And that, friends, is how you comment a shell script.
