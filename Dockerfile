FROM alpine:3
RUN apk add --no-cache ansible
ENTRYPOINT ["/usr/bin/ansible"]
CMD []
