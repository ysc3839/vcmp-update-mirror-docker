#!/bin/sh
cd /var/www/html/
/usr/bin/php -q -f /var/www/html/cron.php >> /var/www/html/files/cron.php.log
