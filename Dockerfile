FROM alpine/socat

LABEL org.opencontainers.image.authors="Alan Ip <theipster@users.noreply.github.com>" \
    org.opencontainers.image.source="https://github.com/theipster/wake-on-lan"

COPY entrypoint.sh /usr/bin/wol

ENTRYPOINT ["wol"]
