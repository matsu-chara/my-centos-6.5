#!/bin/sh

git clone https://github.com/matsu-chara/dotfiles/ /home/vagrant/.dotfiles
chown -R vagrant:vagrant /home/vagrant/.dotfiles

sh /home/vagrant/.dotfiles/installScripts/gitInstall.sh
sh /home/vagrant/.dotfiles/installScripts/zshInstall.sh
sh /home/vagrant/.dotfiles/installScripts/vimInstall.sh

sudo -u vagrant sh /home/vagrant/.dotfiles/setup.sh

printf "please execute for changin shell ===> chsh -s /usr/local/bin/zsh\n"
