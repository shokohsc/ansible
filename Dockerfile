ARG FROM_TAG='latest'
FROM alpine:${FROM_TAG:-latest}

RUN apk add --no-cache ansible openssh bash
RUN ansible-galaxy install nickjj.docker layereight.wifi
RUN pip3 install netaddr
ADD entrypoint.sh /init/entrypoint.sh
WORKDIR /app
ENTRYPOINT ["/init/entrypoint.sh"]
CMD []
