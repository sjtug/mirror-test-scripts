FROM python:3.8
LABEL maintainer="iskyzh@gmail.com"

RUN pip config set global.index-url https://mirrors.sjtug.sjtu.edu.cn/pypi/web/simple
COPY test.sh /root

CMD /root/test.sh
