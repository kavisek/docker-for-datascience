# Navigate to dockerfile
cd ~/docker-for-datascience/python-images/flask-hello-world

# Killing container if exists
container_name="flask-hello-world-container"
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

# Build container
docker build --pull --force-rm -f "Dockerfile" -t flask-hello-world-image:latest "."

docker run -p 5001:5000 --name flask-hello-world-container -it flask-hello-world-image:latest

# Navigate to http://localhost:5001 to view the flask app.