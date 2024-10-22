#!/bin/bash

sleep_secs="$1"
message="$2"

while true; do
    sleep $sleep_secs
    echo ""
    echo "$message"
    # echo "$message" | wall      # doesn't work due to docker not maintaining a login
done
