FROM easypi/alpine-arm
MAINTAINER Stefano Marinelli <stefano@dragas.it>

# Base layer
ENV ARCH=armv7l
ENV CROSS_COMPILE=/usr/bin/

EXPOSE 25

COPY entrypoint.sh /tmp/

RUN apk update && apk add postfix
ENTRYPOINT ["/tmp/entrypoint.sh"]

