# Kill all actvite containers
ids=$(docker ps -q)
for id in $ids
do
  echo "Killing $id"
  docker kill $id
done

# Remove all contaniner
ids=$(docker ps -a -q)
for id in $ids
do
  echo "Removing Container $id"
  docker rm $id
done

# Remove all Images
ids=$(docker images | grep -v "docker\|k8s.gcr.io\|REPOSITORY" | awk '{print $3}')
for id in $ids
do
  echo "Removing Image $id"
  docker rmi $id
done

# Docker prune all dangling images
docker image prune -a -f

# Remove volumes
docker volume rm $(docker volume ls -q)

echo "Docker has been Destroyed!!"
