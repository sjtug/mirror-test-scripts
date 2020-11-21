FROM opensuse/leap
LABEL maintainer="iskyzh@gmail.com"

RUN sed -i 's|download.opensuse.org|mirrors.internal.skyzh.xyz/opensuse|g' /etc/zypp/repos.d/*

CMD zypper update && zypper install -y nginx
