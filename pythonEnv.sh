#!/bin/bash

#+
# :Description: 
#
# :AUTHOR: Katarzyna Ewa Lewinska
# :DATE: 24 July 2025
# :UPDATES: 
#-

# Name of the environment
ENV_NAME="Europe-LAND"

# Create the environment with Python 3.11
conda create -y -n "$ENV_NAME" python=3.11

# Activate the environment
# source "$(conda info --base)/etc/profile.d/conda.sh"
conda activate "$ENV_NAME"

# Set conda-forge as a high-priority channel
conda config --env --add channels conda-forge
conda config --env --set channel_priority strict

# Install packages
conda install conda-forge::gdal
conda install libffi
conda install anaconda pandas

# WARNING: os and time are standard Python modules — no need to install them
# Skipping: conda install -c jmcmurray os
# Skipping: conda install conda-forge::time

conda install conda-forge chardet
conda install conda-forge::geopandas
# fiona may require reinstall
# conda install conda-forge fiona
conda install anaconda openpyxl
conda install anaconda::pyarrow
conda install anaconda::seaborn

# Not available via conda channels. Install dirrectly with pip
pip install deep-translator
pip install jaro-winkler

