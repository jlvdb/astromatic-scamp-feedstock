#!/usr/bin/env bash
set -e

conda create -n scamp
conda activate scamp
conda config --add channels conda-forge
conda config --set channel_priority strict
conda install conda-build
conda-build recipe
conda install -c file://${CONDA_PREFIX}/conda-bld astromatic-scamp
