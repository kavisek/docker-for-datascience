

shutdown:
	docker-compose down

startup: shutdown
	docker-compose --profile db up

startup_liq: shutdown
	docker-compose --profile liq up


healthchecks:
	# View healthchecks
	docker inspect --format "{{json .State.Health }}" $(shell docker container ls -f name=liquibase_container_local_db_1 -q | awk '{print $1}')

attach:
	# Attach to the liquibase services. Useful for troubleshooting.
	docker exec -it --user root $(shell docker container ls -f name=liquibase_container_liquibase_service_1 -q | awk '{print $1}') /bin/bash \

update:
	# update database with database migrations.
	liquibase "--defaultsFile=/liquibase/liquibase.docker.properties" update

validate:
	# Validate propreties file.
	liquibase "--defaultsFile=/liquibase/liquibase.docker.properties