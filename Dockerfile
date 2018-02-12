#FROM easypi/alpine-arm
FROM hypriot/rpi-alpine
MAINTAINER Stefano Marinelli <stefano@dragas.it>

# Base layer
ENV ARCH=armv7l
ENV CROSS_COMPILE=/usr/bin/

EXPOSE 25

COPY entrypoint.sh /tmp/

RUN apk --no-cache add postfix
ENTRYPOINT ["/tmp/entrypoint.sh"]

