FROM fedora:latest

RUN rm /etc/yum.repos.d/fedora-cisco-openh264.repo
ARG USE_SJTUG

RUN if [ "$USE_SJTUG" = "TRUE" ] ; then echo "NOTICE: You're bootstrapping with SJTUG mirror" ; fi
RUN if [ "$USE_SJTUG" = "TRUE" ] ; then sed -i 's/metalink/#metalink/g' /etc/yum.repos.d/* ; fi
RUN if [ "$USE_SJTUG" = "TRUE" ] ; then sed -i 's|#baseurl=http://download.example/pub/|baseurl=http://mirrors.sjtug.sjtu.edu.cn/|g' /etc/yum.repos.d/* ; fi

RUN dnf makecache && sh -c 'sudo yum install -y --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'
RUN sed -i 's/metalink/#metalink/g' /etc/yum.repos.d/rpmfusion-*
RUN sed -i 's|#baseurl=http://download1.rpmfusion.org/|baseurl=http://mirrors.internal.skyzh.xyz/rpmfusion/|g' /etc/yum.repos.d/rpmfusion-*

CMD yum install -y ffmpeg
