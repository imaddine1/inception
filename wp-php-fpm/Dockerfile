FROM debian:bullseye

RUN apt-get -y update
           
RUN apt-get -y install php php-fpm

RUN apt-get install -y wget 


RUN  mkdir /var/www 

RUN  mkdir /var/www/html

# RUN cd /var/www/html && wget https://wordpress.org/latest.tar.gz && tar xvf latest.tar.gz
 
# RUN cd /var/www/html && rm -f latest.tar.gz

RUN apt-get -y install vim
COPY www.conf /etc/php/7.4/fpm/pool.d/
# #this is depend on nginx lunch with fsgi configered well
# COPY wp-config.php /var/www/html/wordpress/
# 172.18.0.2

EXPOSE 9000
# this command work fine but there is a litte problem in the last command
CMD service php7.4-fpm start && service php7.4-fpm stop && php-fpm7.4 -F
#CMD ["bash", "lunch_php.sh"]