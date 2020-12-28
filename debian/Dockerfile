FROM debian:buster

RUN sed -i 's/http:\/\/deb.debian.org/http:\/\/siyuan.internal.sjtug.org/g' /etc/apt/sources.list
RUN sed -i 's/http:\/\/security.debian.org/http:\/\/siyuan.internal.sjtug.org/g' /etc/apt/sources.list

RUN cat /etc/apt/sources.list
COPY test.sh /root

CMD /root/test.sh
