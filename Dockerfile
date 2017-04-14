FROM alpine:latest

RUN apk add --no-cache borgbackup openssh-client && rm -rf /tmp/* /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["crond", "-l", "5", "-f" ]

VOLUME ["/backup"]

