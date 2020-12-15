#!/bin/bash

set -e

ostree remote refs fedora
ostree pull fedora:fedora/33/x86_64/silverblue --disable-fsync 
