# Pull Image from docker hub
FROM continuumio/miniconda:4.7.12
LABEL maintainer="kavisek"

# Set working directory
WORKDIR /app

# Copying File to Room Directory
COPY . /app/

# Install Linux Packages
RUN apt-get update
RUN apt-get install sudo -y
RUN apt-get install bzip2 curl wget wget screen lsof nano make -y
RUN sudo apt-get install postgresql postgresql-contrib -y

# Install MYSQL Command Line client
RUN apt-get install mariadb-client libzbar-dev -y

# Update Conda
RUN conda update -n base -c defaults conda

# Add Channels
RUN conda config --add channels conda-forge

# Create Conda Virtual Enviroment
RUN conda env create -f environment.yml -n app python=3.6

# Make port 8080
EXPOSE 8080

ENTRYPOINT ["conda","run","-n","app","python3","/app/main.py"]
