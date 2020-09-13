ids=$(docker container list -f "status=exited" -q)
for id in $ids
do
    echo "Removing Container $id"
    docker rm -f $id
done