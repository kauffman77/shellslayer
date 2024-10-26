#!/usr/bin/bash

echo 'WELCOME!'
echo 'You sense a foul presence in the process tree....'
echo ''

# started_file=~/.started
# touch $started_file
# && ! -z "$(find $started_file -mmin -2)" ]]; then

# enable an initial hint on to get started
export INITIAL_HINT=1

initial_hint='A wild README.md appeared. Try typing:
>> cat README.md
Type `hint_off` to disable this hint
'

function hint_off {
    initial_hint=""
}

function log_check {
    if [[ -e ~/LOG.txt && ! -z "$(find ~/LOG.txt -mmin -1)" ]]; then
        printf "UPDATE to ~/LOG.txt\n\r"
    fi
}

export PS1='$initial_hint$(log_check)(\w)\$ '


