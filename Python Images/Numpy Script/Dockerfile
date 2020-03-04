# Download Python Image
FROM python:3.6.2-slim

# Set working directory
WORKDIR /root

# Install basic linux utitlies
RUN apt-get update
RUN apt-get install sudo  -y
RUN sudo apt-get install curl -y

# Copy all of the current dictories content so the docker container
COPY . /root/

CMD python counter.py
