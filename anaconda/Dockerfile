FROM conda/miniconda3:latest
LABEL maintainer="iskyzh@gmail.com"

COPY .condarc /root
COPY test.sh /root

ENTRYPOINT /root/test.sh
