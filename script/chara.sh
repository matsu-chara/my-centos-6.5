#!/bin/sh

git clone https://github.com/matsu-chara/dotfiles/ ~/.dotfiles

~/.dotfiles/setup.sh

printf "please execute for changin shell ===> chsh -s /usr/local/bin/zsh\n"
