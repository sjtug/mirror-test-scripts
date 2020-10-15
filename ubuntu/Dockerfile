FROM ubuntu:20.04
LABEL maintainer="iskyzh@gmail.com"

RUN sed -i 's/http:\/\/security.ubuntu.com/http:\/\/mirrors.sjtug.sjtu.edu.cn/g' /etc/apt/sources.list
RUN sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/mirrors.sjtug.sjtu.edu.cn/g' /etc/apt/sources.list

RUN cat /etc/apt/sources.list
COPY test.sh /root

CMD /root/test.sh
