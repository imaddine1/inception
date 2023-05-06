# you need to create your own network cause there is no default ip
FROM debian:bullseye

RUN apt-get -y update --fix-missing  && apt-get -y install nginx

# configuration of nginx
COPY nginx.conf /etc/nginx/


# RUN chown -R www-data.www-data /var/www/html \
#    && chmod -R 755 /var/www/html


#COPY website /var/www/html
# CREATE CERTIFICATE TO USING HTTPS
RUN apt-get -y install openssl

#index.nginx-debian.html
RUN mkdir /etc/nginx/ssl

RUN cd /etc/nginx/ssl && openssl req -x509 -nodes -batch  -newkey rsa:2048 -keyout /etc/nginx/ssl/private.key -out /etc/nginx/ssl/ca.crt

# Expose the port for access
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
