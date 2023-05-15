FROM debian:bullseye

RUN apt-get update -y
RUN apt-get install -y mariadb-server
RUN apt-get install -y dos2unix

COPY db.sh ./startup.sh
COPY 50-server.cnf /etc/mysql/mariadb.conf.d/

EXPOSE 3306

CMD ["bash", "startup.sh"]