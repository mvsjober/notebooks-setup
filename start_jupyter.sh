#!/bin/bash
source ~/miniconda3/etc/profile.d/conda.sh
conda activate notebooks
jupyter-lab --ip 0.0.0.0 \
            --certfile=~/.jupyter/mycert.pem --keyfile=~/.jupyter/mykey.key \
            --notebook-dir=~/code/
