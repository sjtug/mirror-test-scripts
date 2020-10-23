FROM google/dart
LABEL maintainer="iskyzh@gmail.com"

WORKDIR /app
ENV PUB_HOSTED_URL=https://dart-pub.mirrors.sjtug.sjtu.edu.cn

COPY ./pubspec.yaml /app

CMD pub get
