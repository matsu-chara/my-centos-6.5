#!/bin/sh

git clone https://github.com/matsu-chara/dotfiles/ /home/vagrant/.dotfiles
chown -R vagrant:vagrant /home/vagrant/.dotfiles

find /home/vagrant/.dotfiles/installScripts/*.sh -print0 | xargs -0 -I {} sh {}

sudo -u vagrant sh /home/vagrant/.dotfiles/setup.sh

printf "please execute for changin shell ===> chsh -s /usr/local/bin/zsh\n"
