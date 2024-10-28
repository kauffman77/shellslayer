#!/usr/bin/bash

echo 'WELCOME PALADIN!'
echo 'You sense a foul presence in the process tree....'
echo ''

# started_file=~/.started
# touch $started_file
# && ! -z "$(find $started_file -mmin -2)" ]]; then

# enable an initial hint on to get started
export INITIAL_HINT=1

initial_hint='A wild README.md appeared. Try typing:
>> cat README.md

Type `hintcmds` for a list of common commands
Type `firstoff` to disable this hint
'

function firstoff {
    initial_hint=""
}

hintcmds_msg='
|--------------+-----------------------------------------------------------------------------|
| Command      | Effect                                                                      |
|--------------+-----------------------------------------------------------------------------|
| cd dirA      | Change the shells working directory (folder) to dirA                        |
| cd           | With no arguments change to the user home directory                         |
| ls           | List the files that are in the current directory                            |
| ls -l        | Do a long listing that shows additional information about files             |
| pwd          | Print the working directory; shows what folder the shell is currently in    |
| cat file.txt | Print the contents of file.txt in the terminal                              |
|--------------+-----------------------------------------------------------------------------|
| Ctrl-l       | (Hold Ctrl key and press L) Refresh the screen if it becomes distorted      |
| Up Arrow     | Recall previous commands; repeatedly press Up to go further back in history |
| Down Arrow   | Scroll back to more recent commands if in history                           |
| Ctrl-c       | (Hold Ctrl key and press C) Interrupt a command and show the prompt         |
|--------------+-----------------------------------------------------------------------------|
'

function hintcmds {
    printf "%s\n" "$hintcmds_msg"
}

function log_check {
    if [[ -e ~/LOG.txt && ! -z "$(find ~/LOG.txt -mmin -1)" ]]; then
        printf "UPDATE to ~/LOG.txt\n\r"
    fi
}

export PS1='$initial_hint$(log_check)(\w)\$ '
