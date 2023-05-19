PATH_DOCKER=-f ./srcs/docker-compose.yml

all: up

up:
	mkdir -p  db
	mkdir -p files
	docker-compose $(PATH_DOCKER) up  --build -d

down:
	docker-compose $(PATH_DOCKER) down --volumes

rm: down
	docker system prune -af
	rm -rf db files

re: rm all