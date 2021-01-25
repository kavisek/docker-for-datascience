mkdir_volume_store:
	mkdir -p $HOME/workspaces/docker/volumes/timescale_11

docker_build:
	docker pull timescale/timescaledb:1.7.4-pg11

docker_run:
	# We are exporing our local 5430 port to dockers 5432
	# We saving our postgress passwording as enviroment variable to not password prompt is needed.
	# If the e flag was not present we would have to enter our password manually during each docker exec command
	docker run -d --name timescaledb-11 \
	-e POSTGRES_PASSWORD=docker \
	-p 5430:5432 \
	-v $HOME/workspaces/docker/volumes/timescale_11:/var/lib/postgresql/data \
	timescale/timescaledb:1.7.4-pg11

docker_psql:
	docker exec -it timescaledb-11 psql -U postgres

docker_pg_version:
	docker exec -it timescaledb-11 pg_config --version