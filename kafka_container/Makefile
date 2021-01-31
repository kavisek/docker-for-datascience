

startup:
	docker-compose -f docker-compose-single-broker.yml up -d

shutdown:	
	docker-compose down

docker_bash:
	docker exec -it kafka_container_kafka_1 bash

create_topic:
	kafka-topics.sh --create --zookeeper zookeeper:2181 --replication-factor 1 --partitions 1 --topic test

create_consumer:
	kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test