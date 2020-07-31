FROM ubuntu:20.04
MAINTAINER Alex Chi <iskyzh@gmail.com>

RUN apt-get update -qq && apt-get install ca-certificates -y -qq
RUN sed -i 's/http:\/\/security.ubuntu.com/https:\/\/mirrors.sjtug.sjtu.edu.cn/g' /etc/apt/sources.list && sed -i 's/http:\/\/archive.ubuntu.com/https:\/\/mirrors.sjtug.sjtu.edu.cn/g' /etc/apt/sources.list
RUN cat /etc/apt/sources.list
RUN apt-get update -qq && apt-get install gnupg wget -y -qq
COPY test.sh /root

ENTRYPOINT /root/test.sh
