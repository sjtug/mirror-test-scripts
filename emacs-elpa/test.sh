#!/bin/bash

set -e

emacs --batch -l ~/.emacs.d/init.el --eval="(configuration-layer/update-packages t)"
