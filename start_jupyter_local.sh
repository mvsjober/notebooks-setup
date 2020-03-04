#!/bin/bash
source ~/sw/opt/miniconda3/etc/profile.d/conda.sh
conda activate notebooks-cpu-2020-02
jupyter-lab --notebook-dir=lab/
