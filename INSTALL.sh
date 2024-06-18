#!/usr/bin/env bash -l
set -e

echo 'first run:'
echo '    conda create -y -n scamp && conda activate scamp'
read -p 'Press enter to continue'
echo

conda config --add channels conda-forge
conda config --set channel_priority strict
conda install -y conda-build plplot
conda-build recipe
conda install -y -c file://${CONDA_PREFIX}/conda-bld astromatic-scamp
