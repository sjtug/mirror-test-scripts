#!/bin/bash

set -e

julia -e 'using Pkg; Pkg.add("Conda")'
julia -e 'using Conda; Conda.channels()'
