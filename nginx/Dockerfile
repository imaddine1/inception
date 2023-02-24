FROM debian:bullseye

RUN apt-get -y update  && apt-get -y install nginx 

RUN apt-get install -y wget && apt-get -y install vim

RUN apt-get -y install git

RUN apt -y install zsh && sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


# ALL THE COPIES THAT I NEED

COPY  web-site/ /var/www/html

COPY nginx.conf /etc/nginx/

COPY .zshrc /root

# CREATE CERTIFICATE TO USING HTTPS

RUN mkdir /etc/nginx/ssl && openssl req -x509 -nodes -batch  -newkey rsa:2048 -keyout /etc/nginx/ssl/private.key -out /etc/nginx/ssl/ca.crt

# Expose the port for access
EXPOSE 443

# Run the Nginx server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
