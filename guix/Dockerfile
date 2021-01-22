FROM metacall/guix
LABEL maintainer="iskyzh@gmail.com"

WORKDIR /sjtug-test
COPY test.sh /sjtug-test

RUN sed -i "s|https://git.savannah.gnu.org/git/guix.git|https://git.sjtu.edu.cn/sjtug/guix.git|g" ~/.config/guix/channels.scm

CMD /sjtug-test/test.sh
