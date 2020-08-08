```Dockerfile
RUN apt-get update -y -qq && apt-get install ca-certificates -y -qq
COPY certificate.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates

ENV http_proxy=http://host.docker.internal:1089
ENV HTTP_PROXY=http://host.docker.internal:1089
ENV https_proxy=http://host.docker.internal:1089
ENV HTTPS_PROXY=http://host.docker.internal:1089
```
