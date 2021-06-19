FROM alpine/socat

COPY entrypoint.sh /usr/bin/wol

ENTRYPOINT ["wol"]
