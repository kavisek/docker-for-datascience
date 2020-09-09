

# Build containers
docker build --pull --rm -f "Dockerfile" -t enviroment-python3-image:latest "."

# Build container
docker run --name enviroment-python3-container -it enviroment-python3-image:latest


# Stop and remove container and image.
# docker stop enviroment-python3-container
# docker rm enviroment-python3-container
# docker rmi enviroment-python3-image:latest

# Check Release
cat /etc/issue