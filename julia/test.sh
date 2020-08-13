#!/bin/bash

set -e

julia -e 'using Pkg; pkg"add Images DifferentialEquations Plots Flux JuMP Makie"'
julia -e 'using Pkg; Pkg.add("Images")'
julia -e 'using Pkg; Pkg.add("Plots")'
julia -e 'using Pkg; Pkg.add("FFMPEG")'
julia -e 'using Pkg; Pkg.add("Makie")'
julia -e 'using Pkg; Pkg.add("DifferentialEquations")'
julia -e 'using Pkg; Pkg.add("Turing")'
julia -e 'using Pkg; Pkg.add("Flux")'
julia -e 'using Pkg; Pkg.add("IJulia")'
julia -e 'using Pkg; Pkg.add("Conda")'
