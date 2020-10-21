FROM alpine:latest
LABEL maintainer="iskyzh@gmail.com"

RUN sed -i 's/http:\/\/dl-cdn.alpinelinux.org/http:\/\/mirrors.sjtug.sjtu.edu.cn/g' /etc/apk/repositories
RUN apk add curl bash
ENV RUSTUP_DIST_SERVER=https://mirrors.sjtug.sjtu.edu.cn/rust-static
ENV RUSTUP_UPDATE_ROOT=https://mirrors.sjtug.sjtu.edu.cn/rust-static/rustup

COPY test.sh /root
CMD /root/test.sh
