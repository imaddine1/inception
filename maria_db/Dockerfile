FROM debian:bullseye

ENV MYSQL_ROOT_PASSWORD=root

RUN apt-get update

RUN apt -y install mariadb-server 


COPY database.sql /docker-entrypoint-initdb.d/

COPY script.sh /startup.sh

EXPOSE 3306


CMD ["/bin/bash", "/startup.sh"]