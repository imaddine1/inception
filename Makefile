PATH_DOCKER=-f ./srcs/docker-compose.yml

all: up

up:
	mkdir -p  /home/iharile/data/files
	mkdir -p /home/iharile/data/db 
	docker compose $(PATH_DOCKER) up  --build -d

down:
	docker compose $(PATH_DOCKER) down 

rm:
	docker compose $(PATH_DOCKER) down --volumes
	docker system prune -af
	rm -rf /home/iharile/data

re: rm all
