FROM debian:buster

RUN apt-get update -y --fix-missing
           
RUN apt-get install -y wget php php-fpm  php-mysql mariadb-client

RUN  mkdir /var/www && \
    mkdir /var/www/html && \
    mkdir /var/www/html/wordpress

RUN cd /var/www/html && wget https://wordpress.org/latest.tar.gz && tar xvf latest.tar.gz
 
RUN cd /var/www/html && rm -f latest.tar.gz

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

COPY ./conf/wp /usr/local/bin/

RUN cd /usr/local/bin && chmod +x wp

COPY /tools/create.sh .

EXPOSE 9000

# this command make php work in foreground
CMD ["bash", "create.sh"]
