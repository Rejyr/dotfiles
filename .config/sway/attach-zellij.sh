#! /bin/sh

sessions=$(zellij ls)
session=$(zellij ls | rofi -dmenu -theme ~/.config/rofi/dmenu.rasi -p "zellij session:" | sed 's/ (current)//' )

if [[ -z $session ]]; then
    exit
fi

alacritty -e zellij attach --create $session
