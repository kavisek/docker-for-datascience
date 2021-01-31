docker_build:
	docker pull timescale/timescaledb:1.7.4-pg11

docker_run:
	# Make a directory to save you local db volume.
	mkdir -p ./cache/data

	# We are exporing our local 5430 port to dockers 5432
	# We saving our postgress passwording as enviroment variable to not password prompt is needed.
	# If the e flag was not present we would have to enter our password manually during each docker exec command
	docker run -d --name timescaledb-11 \
	-e POSTGRES_PASSWORD=docker \
	-p 5433:5433 \
	--mount type=bind,source=$(shell pwd)/cache/data,target=/var/lib/postgresql/data \
	timescale/timescaledb:1.7.4-pg11

docker_psql:
	# Connet to container via psql.
	docker exec -it timescaledb-11 psql -U postgres

docker_bash:
	# Connet to the database via bin/bash
	docker exec -it timescaledb-11 /bin/bash

docker_pg_version:
	docker exec -it timescaledb-11 pg_config --version