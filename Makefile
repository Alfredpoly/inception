PROJECT = inception

LIST_CONTAINERS := $(shell docker ps -a -q)
LIST_VOLUMES := $(shell docker volume ls -q)

all: up

up:
	mkdir -m 777 -p /Users/alfred/data/mariadb
	mkdir -m 777 -p /Users/alfred/data/wordpress
	docker-compose -f srcs/docker-compose.yaml up --build

stop:
	docker-compose -f srcs/docker-compose.yaml stop

kill:
	docker-compose -f srcs/docker-compose.yaml kill

reset:
	docker-compose -f srcs/docker-compose.yaml down
	docker rm -f $(LIST_CONTAINERS)
	docker volume rm -f $(LIST_VOLUMES)
	rm -rf /Users/alfred/data

re: reset up