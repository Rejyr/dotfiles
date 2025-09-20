#!/bin/bash

CATEGORIES=(
    "SCHOOL"
    "WORKFLOW"
    "CLUBS"
    "COLLEGEAPPS"
    "WASTED"
    "STOP"
)

selected=$(printf "%s\n" "${CATEGORIES[@]}" | fuzzel --dmenu --prompt="time: ")

STATUS_FILE=~/.local/share/timewarrior/status.txt
if [[ "$selected" == "STOP" ]]; then
    timew stop
else
    timew start "$selected"
fi
echo $selected > $STATUS_FILE
