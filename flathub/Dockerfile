FROM archlinux:latest
LABEL maintainer="iskyzh@gmail.com"

ARG USE_SJTUG
RUN if [ "$USE_SJTUG" = "true" ] ; then echo "Server = https://mirrors.sjtug.sjtu.edu.cn/archlinux/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist ; fi

RUN pacman -Syy --noconfirm flatpak
RUN flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
RUN flatpak remote-modify flathub --url=https://mirror.sjtu.edu.cn/flathub
ENV FLATPAK_GL_DRIVERS=dummy

COPY test.sh /root
CMD /root/test.sh
