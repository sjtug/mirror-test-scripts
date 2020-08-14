FROM silex/emacs:latest
LABEL maintainer="iskyzh@gmail.com"

RUN apt-get update -y -qq && apt-get install git -qq
RUN rm -rf ~/.emacs.d
RUN git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

COPY test.sh /root
COPY .spacemacs /root
CMD /root/test.sh
