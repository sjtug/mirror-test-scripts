FROM ubuntu
LABEL maintainer="iskyzh@gmail.com"

RUN apt-get update -y -qq && apt-get install curl -y -qq
ENV RUSTUP_DIST_SERVER=https://mirrors.sjtug.sjtu.edu.cn/rust-static
ENV RUSTUP_UPDATE_ROOT=https://mirrors.sjtug.sjtu.edu.cn/rust-static/rustup

COPY test.sh /root
CMD /root/test.sh
