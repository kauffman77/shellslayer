#!/usr/bin/bash

# common functions used by monitors

# print some text at a specific row in the terminal
function print_at {
    row=$1
    str=$2
    printf "\033[$row;0H"
    printf "%s" "$str"
    printf "\n"
}

# clear the current line
function clear_line {
    printf "\33[2K"
}

# print a banner at the top of the screen
function banner_top {
    inlines="$1"
    border="============================================================"
    n=1
    printf "\033[$n;0H"
    clear_line
    printf "%s\n" "$border"
    n=2
    while read -r line; do
        printf "\033[$n;0H"
        clear_line
        printf "== %-54s ==" "$line"
        printf "\n"
        ((n++))
    done <<< "$inlines"
    printf "\033[$n;0H"
    clear_line
    printf "%s\n" "$border"
    clear_line
    ((n++))
    printf "\033[$n;0H"
    clear_line
    printf "== %-54s ==" "Press Ctrl-l or type reset to restore the screen"
    ((n++))
    printf "\033[$n;0H"
    clear_line
    printf "%s\n" "$border"
}

# add a message to the home directory log
function log_message {
    str=$1
    printf "%s\n" "$str" >> /home/paladin/LOG.txt
}

