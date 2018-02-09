#!/bin/bash
rm -r /etc/init.d/nginx
killall -9 nginx
apt-get update
echo "Done apt-get"
echo "Installing PHP5-CLI CURL"
apt-get -y install php5-cli curl
echo "Done"
cd /tmp
wget http://fos-streaming.com/install.php.1
mv install.php.1 install.php
php install.php
wget http://fos-streaming.com/conf_install.sh
chmod 755 conf_install.sh
./conf_install.sh
