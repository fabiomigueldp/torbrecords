DB_URL ?= "postgresql://user:password@localhost:5432/database_name?sslmode=disable"

migrate-up:
	migrate -database "$(DB_URL)" -path backend/migrations up

migrate-down:
	migrate -database "$(DB_URL)" -path backend/migrations down

.PHONY: migrate-up migrate-down
