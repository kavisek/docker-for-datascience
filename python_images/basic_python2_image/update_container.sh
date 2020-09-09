

# Build containers
docker build --pull --rm -f "Dockerfile" -t basic-python2-image:latest "."

# Build container
docker run --name basic-python2-container -it basic-python2-image:latest


# Stop and remove container and image.
# docker stop basic-python2-container
# docker rm basic-python2-container
# docker rmi basic-python2-image:latest

# Override Entrypoint
# docker run --entrypoint /bin/bash --name basic-python2-container -it basic-python2-image:latest

# Check Release