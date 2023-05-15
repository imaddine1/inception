FROM debian:bullseye

RUN apt-get update -y --fix-missing
           
RUN apt-get install -y php php-fpm  php-mysql 

RUN apt-get install -y mariadb-client

RUN apt-get install -y wget 

RUN  mkdir /var/www && \
    mkdir /var/www/html && \
    mkdir /var/www/html/wordpress

#RUN cd /var/www/html && wget https://wordpress.org/latest.tar.gz && tar xvf latest.tar.gz
 
#RUN cd /var/www/html && rm -f latest.tar.gz

COPY www.conf /etc/php/7.4/fpm/pool.d/

#COPY wp-config.php /var/www/html/wordpress/

COPY wp /usr/local/bin/

RUN cd /usr/local/bin && chmod +x wp

COPY create.sh .

EXPOSE 9000

# this command make php work in foreground
CMD ["bash", "create.sh"]