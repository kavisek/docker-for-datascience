.PHONY: shutdown
shutdown:
	docker compose down

.PHONY: startup
startup: shutdown
	docker compose up

connect:
	docker exec -it influx-db influx

