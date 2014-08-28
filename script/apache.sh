#!/bin/sh

yum install -y httpd httpd-devel
/etc/init.d/httpd start
