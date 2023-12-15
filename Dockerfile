FROM alpine:latest

RUN apk add --no-cache --update bash curl ca-certificates openssl nginx php-fpm php-opcache php-curl php-dom php-exif php-fileinfo php-igbinary php-intl php-mbstring php-openssl php-xml php-zip curl imagemagick   \
    && adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
