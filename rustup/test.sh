#!/bin/bash

curl https://sh.rustup.rs -sSf | sh -s -- -y 
source $HOME/.cargo/env
rustup toolchain install stable
rustup toolchain install nightly

