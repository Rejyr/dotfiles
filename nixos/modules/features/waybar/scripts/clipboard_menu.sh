#! /usr/bin/env bash
cliphist list | fuzzel --dmenu -p 'clip: ' | cliphist decode | wl-copy
