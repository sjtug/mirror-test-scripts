FROM voidlinux/voidlinux
LABEL maintainer="iskyzh@gmail.com"

RUN mkdir -p /etc/xbps.d
RUN cp /usr/share/xbps.d/*-repository-*.conf /etc/xbps.d/
RUN sed -i 's|https://alpha.de.repo.voidlinux.org|https://mirror.sjtu.edu.cn/voidlinux|g' /etc/xbps.d/*-repository-*.conf

CMD xbps-query -L && xbps-install -Syu firefox
