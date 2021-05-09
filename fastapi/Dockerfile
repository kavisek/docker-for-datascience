# Download Python Image
FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Copy all of the current dictories content so the docker container
COPY . /app/

# Install basic linux utitlies
RUN apt-get update
RUN apt-get install sudo  -y
RUN sudo apt-get install curl make -y
RUN pip3 install -r requirements.txt

# Entrypoint python3, command script file name.
ENTRYPOINT [ "uvicorn main:app --reload"]
