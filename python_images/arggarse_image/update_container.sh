

# Build containers
docker build --pull --rm -f "Dockerfile" -t argparse-image:latest "."

# Build container
docker run --name argparse-container -it argparse-image:latest # Error
docker run --name argparse-container -it argparse-image:latest -b outliers -c white # Docker Run with Arguments


# Stop and remove container and image.
# docker stop argparse-container
# docker rm argparse-container
# docker rmi argparse-image:latest

# Override Entrypoint
# docker run --entrypoint /bin/bash --name gcloud-python-container -it argparse-image:latest

# Check Release
# cat /etc/issue