#!/bin/sh

git clone https://github.com/matsu-chara/dotfiles/ ~/.dotfiles
chmod u+x ~/.dotfiles/setup.sh

~/.dotfiles/setup.sh

printf "please execute for changin shell ===> chsh -s /usr/local/bin/zsh\n"
