FROM debian:bullseye

RUN apt-get -y update  && apt-get -y install nginx 

# ALL THE COPIES THAT I NEED


COPY nginx.conf /etc/nginx/

# CREATE CERTIFICATE TO USING HTTPS

RUN mkdir /etc/nginx/ssl && openssl req -x509 -nodes -batch  -newkey rsa:2048 -keyout /etc/nginx/ssl/private.key -out /etc/nginx/ssl/ca.crt

# Expose the port for access
EXPOSE 443

# Run the Nginx server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
