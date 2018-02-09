#!/bin/bash
# Install chmod 755 update_fos.sh && ./update_fos.sh

echo "##UPDATE##"
rm -r /usr/src/FOS-Streaming
cd /home/fos-streaming/fos/www/
mv /home/fos-streaming/fos/www/config.php /tmp/
rm -r /home/fos-streaming/fos/www/*
cd /usr/src/
git clone https://github.com/TnExperts/FOS-Streaming-v1.git /usr/src/FOS-Streaming/
cd /usr/src/FOS-Streaming/
mv /usr/src/FOS-Streaming/* /home/fos-streaming/fos/www/
mv /tmp/config.php /home/fos-streaming/fos/www
cd /home/fos-streaming/fos/www/
php /usr/src/composer.phar install
mkdir /home/fos-streaming/fos/www/hl
chmod -R 777 /home/fos-streaming/fos/www/hl
mkdir /home/fos-streaming/fos/www/cache
chmod -R 777 /home/fos-streaming/fos/www/cache
echo "Update finshed"
