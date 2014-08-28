#!/bin/sh

git clone https://github.com/matsu-chara/dotfiles/ /home/vagrant/.dotfiles
chmod u+x /home/vagrant/.dotfiles/setup.sh

sudo -u vagrant /home/vagrant/.dotfiles/setup.sh

chsh -s /usr/local/bin/zsh vagrant
