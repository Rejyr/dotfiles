#! /bin/bash

prompt="$1"

session=$(zellij ls -sn | tofi --require-match=false --padding-left="25%" --prompt-text "$prompt" )

if [[ -z $session ]]; then
    exit
fi

if [[ "$prompt" = *"delete"* ]]; then
    zellij delete-session -f "$session"
else
    foot -e start -- zellij attach --create $session
fi
