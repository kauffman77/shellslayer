#!/usr/bin/bash

# Substitutions to perform
# DEMONNAME: name of daemon to reveal
# PHRASE: Phrase which must appear at the end of the README.md
# TIMES: number of times that the phrase must occur at the end of README.md

WORKDIR=$1
cd $WORKDIR

while true; do
    actual1=$(tail -n TIMES README.md | sort | uniq -c| awk '{print $1}')
    expect1=TIMES
    actual2=$(tail -1 README.md)
    expect2="PHRASE"
    if [[ "$actual1" == "$expect1" && "$actual2" == "$expect2" ]]; then
        break
    fi

    sleep 1
done

echo DEMONNAME > $PWD/altar.txt

echo ""
echo "SPIRIT: Your supplication pleases me, paladin."
echo "SPIRIT: The demon's name is on the altar : $PWD/altar.txt"
