#!/bin/sh

set -e

guix build gnucash --substitute-urls='https://mirrors.sjtug.sjtu.edu.cn/guix'
guix weather --substitute-urls='https://mirrors.sjtug.sjtu.edu.cn/guix'
