FROM alpine:3
RUN apk add --no-cache ansible openssh bash
RUN ansible-galaxy install nickjj.docker ryankwilliams.ssh_copy_id
ADD entrypoint.sh /init/entrypoint.sh
WORKDIR /app
ENTRYPOINT ["/init/entrypoint.sh"]
CMD []
