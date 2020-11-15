mkdir_volume_store:
	mkdir -p $HOME/workspaces/docker/volumes/postgres

docker_build:
	docker pull postgres:11

docker_run:
	# We are exporing our local 5431 port to dockers 5432
	# We saving our postgress passwording as enviroment variable to not password prompt is needed.
	# If the e flag was not present we would have to enter our password manually during each docker exec command
	docker run --rm --name pg-docker-11 \
	-e POSTGRES_PASSWORD=docker -d \
	-p 5431:5432 \
	-v $HOME/docker/volumes/postgres:/var/lib/postgresql_11/data \
	postgres:11


docker_exec:
	docker exec -it pg-docker-11 psql -U postgres


view_database:
	\d

show_database_version:
	SHOW server_version;

disconnect from postgres:
	# Run the following command
	\q

