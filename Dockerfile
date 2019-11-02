FROM alpine:3
RUN apk add --no-cache ansible openssh bash
ADD entrypoint.sh /init/entrypoint.sh
WORKDIR /app
ENTRYPOINT ["/init/entrypoint.sh"]
CMD []
