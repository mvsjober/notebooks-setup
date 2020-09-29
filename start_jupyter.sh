#!/bin/bash

CERTFILE=~/.jupyter/mycert.pem
KEYFILE=~/.jupyter/mykey.key

source ~/.venv/ml/bin/activate

if [ -f "$CERTFILE" ]
then
    echo "Launching JupyterLab in server mode using HTTPS"
    JUPYTER_OPTIONS="--ip 0.0.0.0 --certfile=$CERTFILE --keyfile=$KEYFILE"
else
    echo "Launching JupyterLab in local mode"
fi

set -x
jupyter-lab $JUPYTER_OPTIONS --notebook-dir=~/code/
