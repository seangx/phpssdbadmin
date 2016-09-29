FROM php:5.6-fpm

ENV SERVE_PORT 9999

COPY phpssdbmyadmain/ /var/www/

ENTRYPOINT php -S 0.0.0.0:$SERVE_PORT -t /var/www/
