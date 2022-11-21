.PHONY: trino-up
trino-up: trino-down
	@docker-compose up

.PHONY: trino-down
trino-down:
	@docker-compose down

.PHONY: trino-cli
trino-cli:
	@docker exec -it coordinator trino
