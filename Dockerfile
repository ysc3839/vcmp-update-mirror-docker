FROM daocloud.io/ysc3839/docker-nginx-php5-fpm-cron:latest

# Set the author
MAINTAINER ysc3839

COPY nginx.conf /etc/nginx/sites-available/default

COPY cron.sh /var/www/cron.sh
RUN chmod 0755 /var/www/cron.sh

COPY phpcron /etc/cron.d/phpcron
RUN chmod 0644 /etc/cron.d/phpcron

COPY html/ /var/www/html/
