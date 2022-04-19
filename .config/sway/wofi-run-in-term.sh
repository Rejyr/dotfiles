#! /bin/sh

exec alacritty -e fish -c "$(wofi --dmenu --lines 0 -H 1 --prompt "Enter a command to run")"
