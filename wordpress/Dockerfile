FROM debian:bullseye

RUN apt-get -y update
           
RUN apt-get -y install php-fpm php-mysql

RUN apt-get install -y wget 

RUN  mkdir /var/www 

RUN  mkdir /var/www/html

RUN cd /var/www/html && wget https://wordpress.org/latest.tar.gz && tar xvf latest.tar.gz
 
RUN cd /var/www/html && rm -f latest.tar.gz

COPY www.conf /etc/php/7.4/fpm/pool.d/

COPY wp-config.php /var/www/html/wordpress/

EXPOSE 9000

# this command make php work in foreground
CMD service php7.4-fpm start && service php7.4-fpm stop && php-fpm7.4 -F