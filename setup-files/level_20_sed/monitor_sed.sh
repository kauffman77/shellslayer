#!/usr/bin/bash

# Checks for presence of canto-[0-9]*.txt files and if around,
# concatenates all their contents; when the concatenation matches the
# original paradiso.txt file, then complete the level
# 
# Substitutions to perform
# DEMONNAME: name of daemon to reveal

source /setup-files/monitor_utils.sh

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

message="POET: Restored to glory, my verse doth shine.
POET: On the altar, a demon's name shall you find:
      $PWD/altar.txt
POET: Grazie mille, paladin."

log_message "$message"
banner_top "$message"
