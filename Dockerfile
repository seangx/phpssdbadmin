FROM myphp

ENV DB_HOST localhost
ENV DB_PORT 333
ENV DB_AUTH your_db_pwd

ENV USERNAME your_username
ENV USER_PWD your_pwd

ENV SERVE_PORT 9999

COPY phpssdbadmin/ /var/www/

ENTRYPOINT php -S 0.0.0.0:$SERVE_PORT -t /var/www/
