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

echo "Containers has been Destroyed!!"
