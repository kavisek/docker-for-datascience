# Pull gcloud sdk
FROM google/cloud-sdk:latest

# Set working directory
WORKDIR /root

# Copy all of the current dictories content so the docker container
COPY . /root/

RUN apt-get update
RUN apt-get install sudo  -y
RUN sudo apt-get install curl -y

ENTRYPOINT [ "python3"]