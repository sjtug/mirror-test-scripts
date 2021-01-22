FROM debian:buster
LABEL maintainer="iskyzh@gmail.com"

ARG USE_SJTUG

RUN if [ "$USE_SJTUG" = "true" ] ; then sed -i 's/http:\/\/deb.debian.org/http:\/\/mirrors.sjtug.sjtu.edu.cn/g' /etc/apt/sources.list ; fi
RUN if [ "$USE_SJTUG" = "true" ] ; then sed -i 's/http:\/\/security.debian.org/http:\/\/ftp.sjtu.edu.cn/g' /etc/apt/sources.list ; fi

RUN cat /etc/apt/sources.list
RUN apt-get update -y -qq && apt-get install ostree ca-certificates -y -qq

WORKDIR /ostree-repo

RUN ostree init --repo=/ostree-repo --mode=bare-user
RUN ostree remote add --repo=/ostree-repo --no-gpg-verify fedora https://mirror.sjtu.edu.cn/fedora-ostree

COPY test.sh /root
CMD /root/test.sh
