FROM alpine:3
RUN apk add --no-cache ansible openssh bash
WORKDIR /app
ENTRYPOINT ["/usr/bin/ansible-playbook"]
CMD []
