#!/usr/bin/bash

# Checks current working directory for conversion of .dat files to
# .txt files
# 
# DEMONNAME: name of daemon to reveal

WORKDIR=$1

cd $WORKDIR
expect2=$(seq LIMIT)
while true; do
    actual1=$(ls *.dat 2> /dev/null)
    expect1=""
    actual2=$(cat *.txt 2> /dev/null)
    if [[ "$actual1" == "$expect1" && "$actual2" == "$expect2" ]]; then
        break
    fi

    sleep 1
done

echo DEMONNAME > $PWD/altar.txt

echo ""
echo "MONITOR: At last the files have sane extensions...."
echo "MONITOR: The demon's name is on the alter : $PWD/altar.txt"
    
