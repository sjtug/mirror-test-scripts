FROM debian:buster

ARG USE_SJTUG

WORKDIR /app

RUN if [ "$USE_SJTUG" = "true" ] ; then echo "NOTICE: You're bootstrapping with SJTUG mirror" ; fi
RUN if [ "$USE_SJTUG" = "true" ] ; then sed -i 's/http:\/\/deb.debian.org/http:\/\/siyuan.internal.sjtug.org/g' /etc/apt/sources.list ; fi
RUN if [ "$USE_SJTUG" = "true" ] ; then sed -i 's/http:\/\/security.debian.org/http:\/\/siyuan.internal.sjtug.org/g' /etc/apt/sources.list ; fi

RUN apt-get update -y && apt-get install -y curl git unzip

ENV PUB_HOSTED_URL=https://mirrors.sjtug.sjtu.edu.cn/dart-pub
ENV FLUTTER_STORAGE_BASE_URL=https://mirrors.sjtug.sjtu.edu.cn

RUN if [ "$USE_SJTUG" = "true" ] ; then \
        git clone -b stable --depth=1 https://git.sjtu.edu.cn/sjtug/flutter-sdk.git flutter ; \
    else \
        git clone -b stable --depth=1 https://github.com/flutter/flutter flutter ; \
    fi

COPY test.sh /app
CMD /app/test.sh
