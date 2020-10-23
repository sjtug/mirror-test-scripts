FROM archlinux
LABEL maintainer="iskyzh@gmail.com"

RUN echo "Server = https://mirrors.sjtug.sjtu.edu.cn/archlinux/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist

CMD pacman -Syu --noconfirm flatpak
