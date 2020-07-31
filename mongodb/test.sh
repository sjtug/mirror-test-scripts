#!/bin/bash

set -e

wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | apt-key add -
echo "deb [ arch=amd64,arm64 ] https://mirrors.sjtug.sjtu.edu.cn/mongodb/apt/ubuntu/ focal/mongodb-org/4.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.4.list
apt-get update -y -qq
apt-get install -y mongodb-org --download-only
