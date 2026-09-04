.PHONY: up down reset restart

up:
	@echo "Starting dev environment"
	docker compose up

down:
	@echo "Stopping dev environment"
	docker compose down

reset:
	docker compose exec postgres psql -U user -d uzume -c "DROP SCHEMA public CASCADE; CREATE SCHEMA public;"
	docker compose down
	docker compose up

restart:
	docker compose down
	docker compose up