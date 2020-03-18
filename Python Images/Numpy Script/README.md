# Docker Build and RUN

You can build the simple linux docker container using debian by navigating to your DockerFile directory and using the following commands to build your image and the run the container

Feel free to download the Dockerfile within this repo to follow the example below.

```bash
# Navigate to the current directory
cd ~/docker-for-datascience/python-images

# Build a docker image
docker build . -t pythonim

# Run container and execute scirpt at runtime.
docker run --name pythoncn -it pythonim
``
