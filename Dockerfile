ARG FROM_TAG='latest'
FROM alpine:${FROM_TAG:-latest}

RUN apk add --no-cache ansible openssh bash git py3-pip
RUN ansible-galaxy install nickjj.docker layereight.wifi arillso.logrotate tsukune_ch.canonical_livepatch
RUN pip3 install netaddr
ADD entrypoint.sh /init/entrypoint.sh
WORKDIR /app
ENTRYPOINT ["/init/entrypoint.sh"]
CMD []
