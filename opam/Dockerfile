FROM archlinux:latest
LABEL maintainer="iskyzh@gmail.com"

RUN pacman -Syy --noconfirm opam git base-devel
COPY test.sh /root

CMD /root/test.sh
