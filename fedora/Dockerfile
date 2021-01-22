FROM fedora:latest

RUN rm /etc/yum.repos.d/fedora-cisco-openh264.repo

RUN sed -e 's/metalink/#metalink/g' -e 's|#baseurl=http://download.example/pub/|baseurl=http://mirror.sjtu.edu.cn/|g' -i.bak /etc/yum.repos.d/*

CMD dnf makecache && yum -y install vim
