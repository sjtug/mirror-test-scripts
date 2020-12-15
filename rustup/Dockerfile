FROM archlinux:latest
LABEL maintainer="iskyzh@gmail.com"

ARG USE_SJTUG
RUN if [ "$USE_SJTUG" = "true" ] ; then echo "Server = https://mirrors.sjtug.sjtu.edu.cn/archlinux/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist ; fi

RUN pacman -Syy --noconfirm curl
ENV RUSTUP_DIST_SERVER=https://mirrors.sjtug.sjtu.edu.cn/rust-static
ENV RUSTUP_UPDATE_ROOT=https://mirrors.sjtug.sjtu.edu.cn/rust-static/rustup

COPY test.sh /root
CMD /root/test.sh
