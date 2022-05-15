#! /bin/sh
swaymsg -t get_tree | jq -r '..|try select(.focused == true).name'
