#!/bin/bash
# This script made by sevano (fos-streaming.com)
echo  "Kill NGINX"
killall -9 nginx
echo "Copied old Config"
cp /usr/local/nginx/html/config.php /home/fos-streaming/fos/www/

cd /usr/src/
wget https://getcomposer.org/installer 
php installer 
cd /home/fos-streaming/fos/www/  
php /usr/src/composer.phar install  

curl "http://127.0.0.1:8000/install.php?install" 
curl "http://127.0.0.1:8000/install.php?update"
rm -r /home/fos-streaming/fos/www/install.php
