# Download Python Image
FROM python:2.7-slim

# Set working directory
WORKDIR /root

# Copy all of the current dictories content so the docker container
COPY . /root/

# Install basic linux utitlies
RUN apt-get update
RUN apt-get install sudo  -y
RUN sudo apt-get install curl -y
RUN pip install -r requirements.txt


# Defaul entrypoint is based on the base image.
CMD python main.py