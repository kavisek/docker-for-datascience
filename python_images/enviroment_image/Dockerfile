# Download Python Image
FROM python:3.8-slim

# Set working directory
WORKDIR /root

# Copy all of the current dictories content so the docker container
COPY . /root/


# Install basic linux utitlies
RUN apt-get update
RUN apt-get install sudo  -y
RUN sudo apt-get install curl -y

# Set enviroment variables
ENV PROJECT="docker-for-datascience"
ENV REGION="us-central-1"

# Entrypoint python3, command script file name.
ENTRYPOINT [ "bash"]
