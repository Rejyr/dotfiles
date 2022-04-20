#! /bin/sh

command="$(wofi --dmenu --lines 0 -H 1 --prompt "Enter a command to run")"

if [[ -z $command ]]; then
    exit
fi

exec alacritty -e fish -c $command
