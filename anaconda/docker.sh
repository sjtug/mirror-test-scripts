#!/bin/bash

docker build --tag mirrors-sjtug/anaconda-test:1.0 .
docker run -it mirrors-sjtug/anaconda-test:1.0 /bin/bash
