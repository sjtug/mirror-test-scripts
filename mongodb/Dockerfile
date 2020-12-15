FROM ubuntu:20.04
LABEL maintainer="iskyzh@gmail.com"

ARG USE_SJTUG
RUN if [ "$USE_SJTUG" = "true" ] ; then sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/mirrors.sjtug.sjtu.edu.cn/g' /etc/apt/sources.list ; fi

RUN apt-get update -qq && apt-get install ca-certificates gnupg wget -y -qq
RUN sed -i 's/http:\/\/security.ubuntu.com/https:\/\/mirrors.sjtug.sjtu.edu.cn/g' /etc/apt/sources.list && sed -i 's/http:\/\/archive.ubuntu.com/https:\/\/mirrors.sjtug.sjtu.edu.cn/g' /etc/apt/sources.list
COPY test.sh /root

CMD /root/test.sh
