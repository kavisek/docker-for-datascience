
.PHONY: shutdown
shutdown:
	docker compose down

.PHONY: startup
startup: shutdown
	docker compose up

.Phony: test_setup
test_setup:
	mssql -u sa -p docker

connect:
	docker exec -it sql1 "bash"