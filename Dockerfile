FROM daocloud.io/ysc3839/docker-nginx-php5-fpm-cron:latest

# Set the author
MAINTAINER ysc3839

COPY nginx.conf /etc/nginx/sites-available/default

COPY html/ /var/www/html/
