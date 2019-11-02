FROM alpine:3
RUN apk add --no-cache ansible openssh bash
ENTRYPOINT ["/usr/bin/ansible-playbook"]
CMD []
