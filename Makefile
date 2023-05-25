PATH_DOCKER=-f ./srcs/docker-compose.yml

all: up

up:
	mkdir -p  /home/iharile/data/files
	mkdir -p /home/iharile/data/db
	chown iharile.iharile /home/iharile/data 
	docker compose $(PATH_DOCKER) up  --build -d

down:
	docker compose $(PATH_DOCKER) down --volumes

rm: down
	docker system prune -af
	rm -rf /home/iharile/data/db /home/iharile/data/files

re: rm all
