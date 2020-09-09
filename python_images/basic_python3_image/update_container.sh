

# Build containers
docker build --pull --rm -f "Dockerfile" -t basic-python3-image:latest "."

# Build container
docker run --name basic-python3-container -it basic-python3-image:latest


# Stop and remove container and image.
# docker stop basic-python3-container
# docker rm basic-python3-container
# docker rmi basic-python3-image:latest

# Override Entrypoint
# docker run --entrypoint /bin/bash --name gcloud-python-container -it gcloud-python-image 

# Check Release