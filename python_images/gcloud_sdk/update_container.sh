

# Build containers
docker build --pull --rm -f "Dockerfile" -t gcloud-python-image:latest "."

# Build container
docker run --name gcloud-python-container -it gcloud-python-image


# Stop and remove container and image.
# docker stop gcloud-python-image:latest
# docker rm gcloud-python-image:latest
# docker rmi gcloud-python-image

# Override Entrypoint
# docker run --entrypoint /bin/bash --name gcloud-python-container -it gcloud-python-image 