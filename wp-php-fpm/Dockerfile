FROM debian:bullseye

RUN apt-get -y update
           
RUN apt-get -y install php php-fpm

RUN apt-get install -y wget 


RUN  mkdir /var/www 

RUN  mkdir /var/www/html

RUN cd /var/www/html && wget https://wordpress.org/latest.tar.gz && tar xvf latest.tar.gz
 
RUN cd /var/www/html && rm -f latest.tar.gz

#this is depend on nginx lunch with fsgi configered well
COPY wp-config.php /var/www/html/wordpress/

RUN service php7.4-fpm start