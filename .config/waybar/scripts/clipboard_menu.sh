#!/bin/bash
cliphist list | fuzzel --dmenu -p 'clip: ' | cliphist decode | wl-copy
