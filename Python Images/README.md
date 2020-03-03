# Docker Build and RUN

You can build the simple linux docker container using debian by navigating to your DockerFile directory and using the following commands to build your image and the run the container

Feel free to download the Dockerfile within this repo to follow the example below.

```bash
# Navigate to the current Directory
cd ~/docker-for-datascience/python-images

# Build docker container (image name is set to "test_image")
docker build . -t python_script_image

# Run the bash and our python script with our container. Then close the container.
docker run --name python_script_container -it python_script_image  /bin/bash python python_script.py
``
