#!/bin/bash

set -e

cd flutter
git pull
./bin/flutter doctor
