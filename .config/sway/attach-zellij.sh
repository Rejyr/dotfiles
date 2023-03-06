#! /bin/sh

sessions=$(zellij ls)
session=$(zellij ls | rofi -dmenu -theme ~/.config/rofi/dmenu.rasi -p "zellij session:" | sed 's/ (current)//' )

if [[ -z $session ]]; then
    exit
fi

case "$sessions" in 
    *"$session"*) alacritty -e zellij attach $session ;;
    *) alacritty -e zellij attach --create $session ;;
esac
