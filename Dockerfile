FROM php:7.3.8-fpm-alpine3.10
RUN apk --update add composer
RUN docker-php-ext-install \
    dom \
    session \
    tokenizer \
    xml \
    xmlwriter 
WORKDIR /app
COPY ./fs/ /
