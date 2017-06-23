FROM alpine:edge

RUN \
apk add --no-cache mongodb && \
rm /usr/bin/mongoperf

VOLUME /data/db
EXPOSE 27017 28017

COPY run.sh /usr/bin
ENTRYPOINT [ "run.sh" ]
CMD [ "mongod" ]
