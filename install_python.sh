#!/bin/bash
# -*- coding: utf-8 -*-

# required packages(CentOS7)
yum -y install gcc
yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel
yum -y install sqlite-devel readline-devel tk-devel httpd-devel
yum -y install mysql-devel gdbm-devel xz-devel

# install python 2.7.15
cd /usr/local/src
curl -LO https://www.python.org/ftp/python/2.7.15/Python-2.7.15.tgz
tar fxz Python-2.7.15.tgz
cd Python-2.7.15
./configure --prefix=/opt/python2.7 --with-ensurepip=install \
--with-threads --enable-shared LDFLAGS='-Wl,-rpath=/opt/python2.7/lib'
make
make altinstall
