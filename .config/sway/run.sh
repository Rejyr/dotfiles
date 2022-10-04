#! /bin/sh

exec fish -c "$(history | awk 'NR <=100' | rofi -dmenu -theme ~/.config/rofi/dmenu.rasi -p 'Command:')"
