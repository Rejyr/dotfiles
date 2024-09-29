#!/bin/bash
curl "wttr.in?format=1&m" | tr -d ' ' | sed 's/\([-+]\)/ \1/'
