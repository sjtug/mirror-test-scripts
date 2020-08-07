FROM debian
LABEL maintainer="iskyzh@gmail.com"

RUN apt update -y -qq && apt install ostree -y -qq
RUN apt-get update -qq && apt-get install ca-certificates -y -qq

WORKDIR /ostree-repo

RUN ostree init --repo=/ostree-repo --mode=archive --collection-id=org.flathub.Stable
RUN ostree remote add --repo=/ostree-repo --no-gpg-verify flathub https://sel.flathub.org/repo/

COPY test.sh /root
CMD /root/test.sh
