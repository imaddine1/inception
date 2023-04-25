# you need to create your own network cause there is no default ip
FROM debian:bullseye

RUN apt-get -y update --fix-missing  && apt-get -y install nginx php-fpm

# ALL THE COPIES THAT I NEED

COPY nginx.conf /etc/nginx/

COPY info.php /var/www/html

RUN chown -R www-data.www-data /var/www/html \
    && chmod -R 755 /var/www/html
#COPY website /var/www/html
# CREATE CERTIFICATE TO USING HTTPS
RUN apt-get -y install openssl

#index.nginx-debian.html
RUN mkdir /etc/nginx/ssl

RUN cd /etc/nginx/ssl && openssl req -x509 -nodes -batch  -newkey rsa:2048 -keyout /etc/nginx/ssl/private.key -out /etc/nginx/ssl/ca.crt

#COPY nginx_startup.sh /nginx_startup.sh
# Expose the port for access
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
# CMD service php7.4-fpm start && nginx -g "daemon off;"