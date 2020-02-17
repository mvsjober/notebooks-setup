#!/bin/bash
source ~/miniconda3/etc/profile.d/conda.sh
conda activate notebooks-2020-02
jupyter-lab --ip 0.0.0.0 \
            --certfile=~/.jupyter/mycert.pem --keyfile=~/.jupyter/mykey.key \
            --notebook-dir=lab/
