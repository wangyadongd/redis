FROM redis:4.0.2

ADD ./redis.conf /usr/local/etc/redis.conf

RUN chown -R redis:redis /usr/local/etc/

VOLUME /data
WORKDIR /data

CMD [ "redis-server", "/usr/local/etc/redis.conf" ]
