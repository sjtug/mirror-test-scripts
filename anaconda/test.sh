#!/bin/bash

set -e
conda update conda
conda create -n tensorflow tensorflow
conda create -c pytorch -n pytorch pytorch
conda create -c conda-forge -n numpy conda-forge-numpy
