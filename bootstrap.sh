#!/bin/sh

rpm -ivh http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -ivh http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm
rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
rpm -ivh http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm

yum update
yum groupinstall -y "Development Tools"

# yum install -y httpd
# /etc/init.d/httpd start

yum install -y nginx

yum install -y --enablerepo=remi mysql mysql-devel mysql-server mysql-utilities
/etc/init.d/mysqld start
yum install -y --enablerepo=remi,remi-php55 php php-opcache php-devel php-mbstring php-mcrypt php-mysqlnd php-pdo php-pecl-xdebug php-cli php-common php-pecl-apcu php-fpm


git clone https://github.com/matsu-chara/dotfiles/ /home/vagrant/.dotfiles
chown -R vagrant:vagrant /home/vagrant/.dotfiles

sh /home/vagrant/.dotfiles/installScripts/gitInstall.sh
sh /home/vagrant/.dotfiles/installScripts/zshInstall.sh
sh /home/vagrant/.dotfiles/installScripts/vimInstall.sh

sudo -u vagrant sh /home/vagrant/.dotfiles/setup.sh

printf "please execute for changin shell ===> chsh -s /usr/local/bin/zsh\n"
