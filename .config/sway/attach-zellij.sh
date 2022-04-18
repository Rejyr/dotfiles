#! /bin/sh

sessions=$(zellij ls)
session="$(zellij ls | wofi --dmenu | sed 's/ (current)//')"

if [[ -z $session ]]; then
    exit
fi

if [[ $sessions -eq *"$session"* ]]; then
    alacritty -e zellij attach $session
else
    alacritty -e zellij attach --create $session
fi
