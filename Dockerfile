FROM dmonakhov/alpine-fio

VOLUME /tmp
WORKDIR /tmp
RUN mkdir /data
COPY docker-entrypoint.sh /data/.
RUN chmod +x /data/docker-entrypoint.sh
ENTRYPOINT ["/data/docker-entrypoint.sh"]
CMD ["fio"]
