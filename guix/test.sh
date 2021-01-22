#!/bin/sh

set -e
guix build sddm --substitute-urls='https://mirror.sjtu.edu.cn/guix'
# guix weather --substitute-urls='https://mirror.sjtu.edu.cn/guix'
# guix build gnucash --substitute-urls='https://mirror.sjtu.edu.cn/guix'

