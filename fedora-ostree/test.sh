#!/bin/bash

set -e

ostree remote refs fedora
ostree pull fedora:fedora/rawhide/x86_64/silverblue --disable-fsync 
