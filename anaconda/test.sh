#!/bin/bash

set -e

conda install pytorch torchvision cudatoolkit=10.2 -c pytorch
conda update conda
conda create -n tensorflow tensorflow
conda create -c pytorch -n pytorch pytorch
conda create -c conda-forge -n numpy conda-forge-numpy
