#!/usr/bin/bash

# Substitutions to perform
# DEMONNAME: name of daemon to reveal
# PHRASE: Phrase which must appear at the end of the README.md
# TIMES: number of times that the phrase must occur at the end of README.md

source /setup-files/monitor_utils.sh

WORKDIR=$1
cd $WORKDIR

while true; do
    awkscript='/SUPPLICATION-END/{exit}p{print}/SUPPLICATION-START/{p=1}'
    actual1=$(awk "$awkscript" README.md | sort | uniq -c| awk '{print $1}')
    expect1=TIMES
    actual2=$(awk "$awkscript" README.md | tail -1)
    expect2="PHRASE"
    if [[ "$actual1" == "$expect1" && "$actual2" == "$expect2" ]]; then
        break
    fi

    sleep 1
done

echo DEMONNAME > $PWD/altar.txt

message="SPIRIT: Your supplication pleases me, paladin.
SPIRIT: The demon's name is on the altar here:
        $PWD/altar.txt"

log_message "$message"
banner_top "$message"

# echo ""
# echo "SPIRIT: Your supplication pleases me, paladin."
# echo "SPIRIT: The demon's name is on the altar : $PWD/altar.txt"
