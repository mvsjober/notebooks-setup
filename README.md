# Notes on my JupyterLab notebooks environment

Create TLS certificate:

    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ~/.jupyter/mykey.key -out ~/.jupyter/mycert.pem

Set static password by setting `c.NotebookApp.password` in `~/.jupyter/jupyter_notebook_config.py` (see instructions there).

Create environment:

    python3 -m venv ~/.venv/ml
    source ~/.venv/ml/bin/activate
    pip install --upgrade pip
    pip install wheel
    pip install --use-feature=2020-resolver -r requirements.txt

Launch (e.g. in a `tmux` session):

    ./start_jupyter.sh
    
Open <https://mats-gpu:8888/> in your favourite web browser and enjoy :-)
