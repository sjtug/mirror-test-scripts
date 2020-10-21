#!/bin/bash

set -e

docker-compose build $1 && docker-compose run --rm $1

