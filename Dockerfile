FROM python:3

WORKDIR /jup

RUN mkdir -p /root/.jupyter && pip install jupyter -U && pip install jupyterlab

COPY jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py

EXPOSE 8888


CMD ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]
