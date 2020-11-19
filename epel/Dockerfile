FROM centos:latest

ARG USE_SJTUG

RUN if [ "$USE_SJTUG" = "TRUE" ] ; then echo "NOTICE: You're bootstrapping with SJTUG mirror" ; fi
RUN if [ "$USE_SJTUG" = "TRUE" ] ; then sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/* ; fi
RUN if [ "$USE_SJTUG" = "TRUE" ] ; then sed -i 's|#baseurl=http://mirror.centos.org/|baseurl=http://mirrors.sjtug.sjtu.edu.cn/|g' /etc/yum.repos.d/* ; fi

RUN dnf makecache && yum install -y epel-release

RUN sed -i 's/metalink/#metalink/g' /etc/yum.repos.d/epel*
RUN sed -i 's|#baseurl=https://download.fedoraproject.org/pub/|baseurl=http://mirrors.internal.skyzh.xyz/fedora/|g' /etc/yum.repos.d/epel*

CMD yum update -y && yum install -y chromium
