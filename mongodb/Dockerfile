FROM ubuntu:20.04
LABEL maintainer="iskyzh@gmail.com"

RUN apt-get update -qq && apt-get install ca-certificates gnupg wget -y -qq
RUN sed -i 's/http:\/\/security.ubuntu.com/https:\/\/mirrors.sjtug.sjtu.edu.cn/g' /etc/apt/sources.list && sed -i 's/http:\/\/archive.ubuntu.com/https:\/\/mirrors.sjtug.sjtu.edu.cn/g' /etc/apt/sources.list
COPY test.sh /root

ENTRYPOINT /root/test.sh
