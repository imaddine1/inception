FROM debian:bullseye

# ENV DB_ROOT=root123
# ENV DB_DATABASE=wordpress
# ENV DB_USER=imad
# ENV DB_PASSWORD=imad123
# ENV DB_HOST=db

RUN apt-get update -y
RUN apt-get install -y mariadb-server
RUN apt-get install -y dos2unix

COPY db.sh ./startup.sh
COPY 50-server.cnf /etc/mysql/mariadb.conf.d/

EXPOSE 3306

CMD bash -c "dos2unix startup.sh && /startup.sh"