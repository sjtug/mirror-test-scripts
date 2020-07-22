#!/bin/bash

docker build --tag mirrors-sjtug/anaconda-test:1.0 .
docker run mirrors-sjtug/anaconda-test:1.0
