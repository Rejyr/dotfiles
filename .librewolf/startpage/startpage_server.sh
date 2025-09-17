#! /bin/sh

PORT=1122
DIR=~/dotfiles/.librewolf/startpage/

exec python -m http.server -d $DIR $PORT
