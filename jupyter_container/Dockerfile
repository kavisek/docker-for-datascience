FROM python:3.8

COPY . /app
WORKDIR /app

RUN pip install jupyter -U && pip install jupyterlab
RUN pip install -r requirements.txt

EXPOSE 8888
ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]