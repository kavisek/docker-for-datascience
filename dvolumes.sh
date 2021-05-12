# Remove volumes
ids=$(docker volume ls -q)
for id in $ids
do
  echo "Removing Volume $id"
  docker volume rm id
done