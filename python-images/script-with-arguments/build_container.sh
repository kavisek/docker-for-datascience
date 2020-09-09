# Navigate to dockerfile
cd ~/docker-for-datascience/python-images/script-with-arguments

# Killing container if exists
container_name = "python-app-container"
names=$(docker ps --format '{{.Names}}')
for name in $names
do
    if [ "$name" = "$container_name" ]; then
        echo "Killing $name container."
        docker kill $name
    fi
done

# Removing container if exists
names=$(docker ps -a --format '{{.Names}}')
for name in $names
do
    if [ "$name" = "$container_name" ]; then
        echo "Removing $name container."
        docker rm $name
    fi
done

echo "Completed removing container."

# Build image
docker build --pull --force-rm -f "Dockerfile" -t python-app:latest "."

# Run container
docker run --name python-app-container -it python-app:latest --team_id canucks --wins 10