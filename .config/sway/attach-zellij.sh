#! /bin/sh

session=$(zellij ls -sn | rofi -dmenu -theme ~/.config/rofi/dmenu.rasi -p "zellij session:" )

if [[ -z $session ]]; then
    exit
fi

alacritty -e zellij attach --create $session
