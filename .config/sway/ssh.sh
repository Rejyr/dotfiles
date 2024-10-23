#! /bin/bash
hosts="rejyr@ibp"
host=$(echo $hosts | tofi --require-match=false --prompt-text "ssh into: ")

if [[ -z $host ]]; then
    exit
fi

foot -e ssh $host
