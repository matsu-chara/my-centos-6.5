#!/bin/sh

yum install -y --enablerepo=remi mysql mysql-devel mysql-server mysql-utilities
/etc/init.d/mysqld start
