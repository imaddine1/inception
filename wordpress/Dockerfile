FROM debian:bullseye

# ##### database informations #######
# ENV MY_ROOT=root123
# ENV MY_DATABASE=wordpress
# ENV MY_USER=imad
# ENV MY_PASS=imad123
# ENV MY_HOST=db

# ####### admin informations ######
# ENV AD_USER=supervisor
# ENV AD_EMAIL=supervisor@gmail.com
# ENV AD_PASS=supervisor123
# ENV BLOG_TITLE=INCEPTION

# ####### SIMPLE USER #######
# ENV SP_USER=user
# ENV SP_EMAIL=user@gmail.com 
# ENV SP_PASS=user123


RUN apt-get update -y --fix-missing
           
RUN apt-get install -y php php-fpm  php-mysql 

RUN apt-get install -y mariadb-client

RUN apt-get install -y dos2unix

RUN apt-get install -y wget 

RUN  mkdir /var/www && \
    mkdir /var/www/html && \
    mkdir /var/www/html/wordpress

RUN cd /var/www/html && wget https://wordpress.org/latest.tar.gz && tar xvf latest.tar.gz
 
RUN cd /var/www/html && rm -f latest.tar.gz

COPY www.conf /etc/php/7.4/fpm/pool.d/

COPY wp-config.php /var/www/html/wordpress/

COPY wp /usr/local/bin/

RUN cd /usr/local/bin && chmod +x wp

COPY create.sh .

EXPOSE 9000

# this command make php work in foreground
CMD bash -c "dos2unix create.sh && /create.sh"