FROM alpine:3.8

RUN set -ex \
    && apk add --no-cache \
    bash \
    && mkfifo -m 0666 /var/log/cron.log \
    && ln -s /var/log/cron.log /var/log/crond.log   

COPY start-cron.sh /bin/start-cron.sh
RUN  chmod +x /bin/start-cron.sh

CMD ["start-cron.sh"]