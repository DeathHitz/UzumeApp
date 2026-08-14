.PHONY: up down

up:
	@echo "Starting dev environment"
	docker compose up

down:
	@echo "Stopping dev environment"
	docker compose down