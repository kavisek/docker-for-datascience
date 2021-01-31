
docker_pull:
	docker pull redis

docker_run:
	docker run --name redis-container -d redis

docker_bash:
	docker exec -it redis-container sh

start_redis_cli:
	redis-cli

exit_redis_cli:
	exit

redis-commands:
	# Set value to the redis container.
	# <action> <key> <value>
 	set docker great
	get docker
	set name objectrocket
	get name