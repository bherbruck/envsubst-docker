FROM alpine

RUN apk add --no-cache gettext

VOLUME /tmp/config
VOLUME /config

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
