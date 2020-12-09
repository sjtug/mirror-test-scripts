#!/bin/sh

set -e

# guix weather --substitute-urls='http://mirrors.sjtug.sjtu.edu.cn/guix'
guix build gnucash --substitute-urls='https://mirrors.sjtug.sjtu.edu.cn/guix'
