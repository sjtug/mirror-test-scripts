FROM fedora:latest

RUN rm /etc/yum.repos.d/fedora-cisco-openh264.repo

RUN sed -i 's/metalink/#metalink/g' /etc/yum.repos.d/*
RUN sed -i 's|#baseurl=http://download.example/pub/|baseurl=http://mirrors.sjtug.sjtu.edu.cn/|g' /etc/yum.repos.d/*

CMD dnf makecache && yum -y install vim
