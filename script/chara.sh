#!/bin/sh

git clone https://github.com/matsu-chara/dotfiles/ /home/vagrant/.dotfiles
chmod 755 /home/vagrant/.dotfiles/setup.sh

/home/vagrant/.dotfiles/setup.sh

sudo chsh -s /usr/local/bin/zsh vagrant
