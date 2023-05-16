
all:
	docker compose -f ./srcs/docker-compose.yml up --build -d 

rm:
	docker rm -f $$(docker container ls -qa)
	docker rmi -f $$(docker images -qa)
	docker volume rm $$(docker volume ls -q)

re: re all