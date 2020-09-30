FROM alpine:latest

RUN sed -i 's/http:\/\/dl-cdn.alpinelinux.org/http:\/\/mirrors.sjtug.sjtu.edu.cn/g' /etc/apk/repositories
RUN cat /etc/apk/repositories
COPY test.sh /root/test.sh
CMD /root/test.sh
