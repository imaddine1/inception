FROM debian:bullseye

RUN apt-get  -y update

# test with environment

ENV MYSQL_DATABASE=wordpress
ENV MYSQL_USER=imad
ENV MYSQL_PASSWORD=imad123
ENV MYSQL_HOST=localhost

RUN apt -y install mariadb-server vim 
RUN apt-get install  -y dos2unix

#mariadb-client
#COPY database.sql .

COPY db.sh ./startup.sh
EXPOSE 3306

CMD bash -c "dos2unix startup.sh && /startup.sh"