# Notes on my JupyterLab notebooks environment

First install [Miniconda](https://docs.conda.io/en/latest/miniconda.html), then:

    conda env create -f conda-env.yaml
    
Symlink anything you want to be visible in the notebook to `lab`, e.g.:

    ln -s ~/code/{intro-to-ml,intro-to-dl,machine-learning-scripts} lab/

Create TLS certificate:

    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ~/.jupyter/mykey.key -out ~/.jupyter/mycert.pem

Set static password by setting `c.NotebookApp.password` in `~/.jupyter/jupyter_notebook_config.py` (see instructions there).

Launch (e.g. in a `tmux` session):

    ./start_jupyter.sh
    
Open <https://mats-gpu:8888/> in your favourite web browser and enjoy :-)
