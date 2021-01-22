FROM silex/emacs:latest
LABEL maintainer="iskyzh@gmail.com"

ARG USE_SJTUG
RUN if [ "$USE_SJTUG" = "true" ] ; then echo "NOTICE: You're bootstrapping with SJTUG mirror" ; fi
RUN if [ "$USE_SJTUG" = "true" ] ; then sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/mirrors.sjtug.sjtu.edu.cn/g' /etc/apt/sources.list ; fi
RUN if [ "$USE_SJTUG" = "true" ] ; then sed -i 's/http:\/\/security.ubuntu.com/http:\/\/mirrors.sjtug.sjtu.edu.cn/g' /etc/apt/sources.list ; fi

RUN apt-get update -y && apt-get install git -y
RUN rm -rf ~/.emacs.d
RUN if [ "$USE_SJTUG" = "true" ] ; then \
        git clone https://git.sjtu.edu.cn/sjtug/spacemacs.git ~/.emacs.d ; \
    else \
        git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d ; \
    fi

COPY test.sh /root
COPY .spacemacs /root
CMD /root/test.sh
