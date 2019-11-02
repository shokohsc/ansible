FROM alpine:3
RUN apk add --no-cache ansible openssh bash
ADD entrypoint.sh /app/entrypoint.sh
WORKDIR /app
ENTRYPOINT ["/app/entrypoint.sh"]
CMD []
