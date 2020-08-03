FROM rust
MAINTAINER Alex Chi <iskyzh@gmail.com>

COPY config /.cargo/
COPY test.sh /root
RUN git clone https://github.com/skyzh/raytracer.rs
ENV RUSTUP_DIST_SERVER=https://mirrors.sjtug.sjtu.edu.cn/rust-static
ENV RUSTUP_UPDATE_ROOT=https://mirrors.sjtug.sjtu.edu.cn/rust-static/rustup

ENTRYPOINT /root/test.sh
