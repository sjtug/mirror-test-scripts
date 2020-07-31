#!/bin/bash

docker build --tag mirrors-sjtug/mongodb-test:1.0 .
docker run mirrors-sjtug/mongodb-test:1.0
