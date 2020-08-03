#!/bin/bash

set -e

apt-get update -y -qq
apt-get install -y wget git --download-only
