#! /bin/sh

exec fish -c "$(wofi --dmenu --lines 0 -H 1 --prompt "Enter a command to run")"
