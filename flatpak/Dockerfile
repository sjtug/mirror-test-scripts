FROM debian
LABEL maintainer="iskyzh@gmail.com"

ARG USE_SJTUG
RUN if [ "$USE_SJTUG" = "TRUE" ] ; then sed -i 's/http:\/\/deb.debian.org/http:\/\/mirrors.sjtug.sjtu.edu.cn/g' /etc/apt/sources.list ; fi

RUN apt-get update -y -qq && apt-get install ostree ca-certificates -y -qq

WORKDIR /ostree-repo

RUN ostree init --repo=/ostree-repo --mode=archive --collection-id=org.flathub.Stable
RUN ostree remote add --repo=/ostree-repo --no-gpg-verify flathub https://sel.flathub.org/repo/

COPY test.sh /root
CMD /root/test.sh
