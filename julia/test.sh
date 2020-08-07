#!/bin/bash

set -e

julia -e 'using Pkg; Pkg.add("Images")'
julia -e 'using Pkg; Pkg.add("Plots")'
