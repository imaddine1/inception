
# you need to create your own network cause there is no default ip
FROM debian:bullseye

RUN apt-get -y update  && apt-get -y install nginx 

# ALL THE COPIES THAT I NEED

COPY nginx.conf /etc/nginx/

#COPY website /var/www/html
# CREATE CERTIFICATE TO USING HTTPS
RUN apt-get -y install openssl


RUN mkdir /etc/nginx/ssl

RUN cd /etc/nginx/ssl && openssl req -x509 -nodes -batch  -newkey rsa:2048 -keyout /etc/nginx/ssl/private.key -out /etc/nginx/ssl/ca.crt

#COPY nginx_startup.sh /nginx_startup.sh
# Expose the port for access
EXPOSE 443


# Run the Nginx server
#CMD ["/bin/bash", "/nginx_startup.sh"]

CMD ["nginx", "-g", "daemon off;"]
