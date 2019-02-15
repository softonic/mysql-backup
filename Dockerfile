FROM alpine:3.9

RUN apk --update add mysql-client bash python3 curl &&\
 pip3 install awscli

ADD ./rootfs/ /

ENTRYPOINT ["/mysql2s3"]
