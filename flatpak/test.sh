#!/bin/bash

set -e

ostree pull --mirror --depth=1 flathub --disable-fsync --commit-metadata-only
