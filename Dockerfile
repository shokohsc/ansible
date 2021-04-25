ARG FROM_TAG='latest'
FROM alpine:${FROM_TAG:-latest}

RUN apk add --no-cache ansible openssh bash git py3-pip
RUN pip3 install netaddr
RUN ansible-galaxy install nickjj.docker layereight.wifi arillso.logrotate tsukune_ch.canonical_livepatch geerlingguy.ntp
ADD entrypoint.sh /init/entrypoint.sh
WORKDIR /app
ENTRYPOINT ["/init/entrypoint.sh"]
CMD []
