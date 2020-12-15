FROM debian:buster
LABEL maintainer="iskyzh@gmail.com"

ARG USE_SJTUG

RUN if [ "$USE_SJTUG" = "true" ] ; then sed -i 's/http:\/\/deb.debian.org/http:\/\/mirrors.sjtug.sjtu.edu.cn/g' /etc/apt/sources.list ; fi
RUN if [ "$USE_SJTUG" = "true" ] ; then sed -i 's/http:\/\/security.debian.org/http:\/\/ftp.sjtu.edu.cn/g' /etc/apt/sources.list ; fi

RUN cat /etc/apt/sources.list
RUN apt-get update -y -qq && apt-get install flatpak ca-certificates -y -qq
RUN flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
RUN flatpak remote-modify flathub --url=https://mirrors.sjtug.sjtu.edu.cn/flathub

COPY test.sh /root
CMD /root/test.sh
