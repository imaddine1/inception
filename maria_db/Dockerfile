FROM debian:bullseye

ENV MARIADB_ROOT_PASSWORD=root

RUN apt-get update

RUN apt -y install mariadb-server mariadb-client

COPY database.sql /docker-entrypoint-initdb.d/

#COPY script.sh /startup.sh

EXPOSE 3306


#CMD ["service", "mariadb", "start"]