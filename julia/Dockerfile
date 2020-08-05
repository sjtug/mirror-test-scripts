FROM julia
LABEL maintainer="iskyzh@gmail.com"

ENV JULIA_PKG_SERVER=https://mirrors.sjtug.sjtu.edu.cn/julia/
RUN echo "versioninfo()" | julia
COPY test.sh /root

CMD /root/test.sh
