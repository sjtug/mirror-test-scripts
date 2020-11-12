FROM centos:latest

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/*
RUN sed -i 's|#baseurl=http://mirror.centos.org/|baseurl=http://mirrors.sjtug.sjtu.edu.cn/|g' /etc/yum.repos.d/*

CMD dnf makecache && yum -y install vim
