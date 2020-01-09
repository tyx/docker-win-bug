FROM nginx:1.15-alpine AS webserver

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY public /srv/app/public/

FROM oxatis/php-fpm-symfony as app

COPY public /srv/app/public
