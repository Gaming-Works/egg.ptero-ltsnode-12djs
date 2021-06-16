FROM node:lts-alpine

RUN apk add --no-cache --update ffmpeg libc6-compat curl ca-certificates openssl git tar bash sqlite fontconfig \
    && adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
