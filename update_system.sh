#! /usr/bin/env bash

sudo nixos-rebuild switch --flake "${HOME}/dotfiles/nixos#${1}"
