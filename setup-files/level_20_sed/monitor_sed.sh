#!/usr/bin/bash

# Substitutions to perform
# DEMONNAME: name of daemon to reveal

WORKDIR=$1
cd $WORKDIR

targetfile=/setup-files/level_20_sed/paradiso.txt

while true; do
    # if there are any non-defaced cantos and their concatenation
    # matches the target file the level is passed
    if [[ -e canto-00.txt ]] && cmp -s <(cat canto-[0-9]*.txt) $targetfile; then
        break
    fi 
    sleep 1
done

echo DEMONNAME > $PWD/altar.txt

echo ""
echo "POET: Restored to glory, my verse doth shine."
echo "POET: On the altar, a demon's name shall you find : $PWD/altar.txt"
echo "POET: Grazie mille, paladin."
