FROM debian:bullseye
RUN apt-get update -y --fix-missing && apt update -y
# test with environment
RUN apt install -y mariadb-server
RUN apt-get install -y vim 
RUN apt-get install -y dos2unix

#mariadb-client
#COPY database.sql .

COPY db.sh ./startup.sh
EXPOSE 3306

CMD bash -c "dos2unix startup.sh && /startup.sh"