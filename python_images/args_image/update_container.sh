

# Build containers
docker build --build-arg PROJECT="docker-for-datascience",REGION="us-central-1" --pull --rm -f "Dockerfile" -t args-python3-image:latest "."

# Build container
docker run --name args-python3-container -it args-python3-image:latest


# Stop and remove container and image.
# docker stop args-python3-container
# docker rm args-python3-container
# docker rmi args-python3-image:latest

# Check Release
cat /etc/issue