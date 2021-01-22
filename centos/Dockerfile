FROM centos:latest

RUN sed -e 's/mirrorlist/#mirrorlist/g' -e 's|#baseurl=http://mirror.centos.org/|baseurl=http://mirror.sjtu.edu.cn/|g' -i.bak /etc/yum.repos.d/*

CMD dnf makecache && yum -y install vim
