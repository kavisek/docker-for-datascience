FROM python:3.8

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 8050
ENTRYPOINT ["python", "app_basic.py"]