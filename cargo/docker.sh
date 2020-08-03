#!/bin/bash

docker build --tag mirrors-sjtug/cargo-test:1.0 .
docker run -it mirrors-sjtug/cargo-test:1.0
