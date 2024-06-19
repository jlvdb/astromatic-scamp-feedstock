#!/usr/bin/env bash -l
set -e

echo 'first run:'
echo '    conda create -y -n scamp && conda activate scamp'
read -p 'Press enter to continue'
echo

conda config --add channels conda-forge
conda config --set channel_priority strict

# get build requirements
conda install -y conda-build plplot

# bypass the default conda-forge install and build locally using a custom config
conda-build recipe
conda install -y -c file://${CONDA_PREFIX}/conda-bld astromatic-scamp
