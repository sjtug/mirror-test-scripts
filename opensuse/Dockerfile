FROM opensuse/leap
LABEL maintainer="iskyzh@gmail.com"

RUN sed -i 's|download.opensuse.org|mirror.sjtu.edu.cn/opensuse|g' /etc/zypp/repos.d/*

CMD zypper update && zypper install -y nginx
