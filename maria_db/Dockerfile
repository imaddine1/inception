FROM debian:bullseye

ENV MARIADB_ROOT_PASSWORD=root

RUN apt-get update

RUN apt -y install mariadb-server mariadb-client

COPY database.sql .

COPY db.sh ./startup.sh

EXPOSE 3306


CMD ["/bin/bash", "./startup.sh"]
