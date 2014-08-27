#!/bin/sh

curl -L -O http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
curl -L -O http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
curl -L -O http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
rpm -ivh epel-release-6-8.noarch.rpm rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm remi-release-6.rpm
rm -f epel-release-6-8.noarch.rpm rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm remi-release-6.rpm

yum update
yum groupinstall -y "Development Tools"

yum install -y git
git clone https://github.com/matsu-chara/dotfiles/ /home/vagrant/.dotfiles
chown -R vagrant:vagrant /home/vagrant/.dotfiles

sh /home/vagrant/.dotfiles/installScripts/gitInstall.sh
sh /home/vagrant/.dotfiles/installScripts/zshInstall.sh
sh /home/vagrant/.dotfiles/installScripts/vimInstall.sh

sudo -u vagrant sh /home/vagrant/.dotfiles/setup.sh

printf "please execute for changin shell ===> chsh -s /usr/local/bin/zsh\n"
