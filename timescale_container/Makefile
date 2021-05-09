docker_build:
	docker pull timescale/timescaledb:1.7.4-pg11

docker_run:
	# Make a directory to save you local db volume.
	mkdir -p ./cache/data

	# We are exporing the internal 5432 to our localhost at port 5433, since another container
	# in this repo is using 5432 on our localhost.

	# We saving our postgress passwording as enviroment variable to not password prompt is needed.
	# If the e flag was not present we would have to enter our password manually during each docker exec command
	docker run -d --name timescaledb-11 \
	-e POSTGRES_PASSWORD=docker \
	-p 5433:5432 \
	--mount type=bind,source=$(shell pwd)/cache/data,target=/var/lib/postgresql/data \
	--mount type=bind,source=$(shell pwd)/databases,target=/databases \
	timescale/timescaledb:1.7.4-pg11

docker_psql:
	# Connet to container via psql.
	docker exec -it timescaledb-11 psql -U postgres

docker_bash:
	# Connet to the database via bin/bash
	docker exec -it timescaledb-11 /bin/bash

docker_pg_version:
	docker exec -it timescaledb-11 pg_config --version

create_devices_small_db:
	# Create a "adventureworks" database
	docker exec -it timescaledb-11 psql -U postgres -c "CREATE DATABASE \"devices_small\";"

unzip_devices_small:
	# Unzip contents and push to directory.
	tar -xvzf ./databases/devices_small.tar.gz -C ./databases

load_devices_small:
	# Load in database's public schema.
	docker exec -i timescaledb-11 psql -U postgres -d devices_small < databases/devices.sql
	# Copy datafrom mounted directory.
	docker exec -i timescaledb-11 psql -U postgres -d devices_small -c "\COPY readings FROM databases/devices_small_readings.csv CSV"
	docker exec -i timescaledb-11 psql -U postgres -d devices_small -c "\COPY device_info FROM databases/devices_small_device_info.csv CSV"



	