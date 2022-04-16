default: start

build:
	docker-compose build

start:
	docker-compose up -d

stop:
	docker-compose down

restart:
	make stop
	make start

debug:
	docker-compose logs --follow
