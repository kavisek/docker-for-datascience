# Docker Build and RUN

You can build the simple linux docker container using debian by navigating to your DockerFile directory and using the following commands to build your image and the run the container

Feel free to download the Dockerfile within this repo to follow the example below.

Navigate to the directory containing your DockerFile and run the following commands.

```bash
# Build a docker image
docker build . -t pythonim

# Run container and execute scirpt at runtime.
docker run -it pythonim --name pythoncn
``
