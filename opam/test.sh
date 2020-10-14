#!/bin/sh

set -e

opam init default https://mirrors.sjtug.sjtu.edu.cn/git/opam-repository.git -a --disable-sandboxing --reinit
opam install lwt -y
