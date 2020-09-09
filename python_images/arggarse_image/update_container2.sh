

# Build containers
docker build --pull --rm -f "Dockerfile2" -t argparse-image2:latest "."

# Build container
docker run --name argparse-container2 -it argparse-image2:latest # Error
docker run --name argparse-container2 -it argparse-image2:latest main.py -b outliers -c white # Docker Run with Arguments
docker run --name argparse-container3 -it argparse-image2:latest car.py -m civic -c white # Docker Run with Arguments


# Stop and remove container and image.
# docker stop argparse-container2
# docker rm argparse-container2
# docker rmi argparse-image2:latest

# Override Entrypoint
# docker run --entrypoint /bin/bash --name argparse-container2 -it argparse-image2:latest

# Check Release