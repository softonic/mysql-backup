FROM alpine:3.9

RUN apk --update add mysql-client bash python3 &&\
 pip3 install awscli curl

ADD ./rootfs/ /

ENTRYPOINT ["/mysql2s3"]
