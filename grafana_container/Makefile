# After running this command navigate to http://localhost:3000/login to access the container.
# The default username and password will be username: "admin" and password "admin"

docker_build:
	# This image is build on top of alphine linux.
	docker pull grafana/grafana:6.5.0


mkdir_volume_store:
	mkdir -p $HOME/workspaces/docker/volumes/grafana

docker_run:
	# This run command uses a local volume to store the persistent data.
	docker run -d -p 3000:3000 --name grafana_container \
	-e "GF_INSTALL_PLUGINS=grafana-clock-panel,grafana-simple-json-datasource" \
	-v $HOME/workspaces/docker/volumes/grafana:/var/lib/grafana \
	grafana/grafana:6.5.0


docker_run_basic:
	# Running a basic grafana container.
	docker run -d -p 3000:3000 --name grafana_container grafana/grafana:6.5.0

docker_run_with_extension:
	# Running a grafana container with extensions.
	docker run -d \
	-p 3000:3000 \
	--name=grafana \
	-e "GF_INSTALL_PLUGINS=grafana-clock-panel,grafana-simple-json-datasource" \
	grafana/grafana

docker_stop:
	docker_stop grafana_container

docker_remove: 
	docker stop grafana_container
	docker rm grafana_container

