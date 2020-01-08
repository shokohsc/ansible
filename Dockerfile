FROM alpine:3
RUN apk add --no-cache ansible openssh bash
RUN ansible-galaxy install nickjj.docker
RUN pip3 install netaddr
ADD entrypoint.sh /init/entrypoint.sh
WORKDIR /app
ENTRYPOINT ["/init/entrypoint.sh"]
CMD []
