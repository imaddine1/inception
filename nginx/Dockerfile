FROM debian

RUN apt-get -y update  && apt-get -y install nginx

# Copy the Nginx config

COPY  web-site/ /var/www/html

COPY default /etc/nginx/sites-available/

RUN apt-get install -y wget

RUN apt-get -y install git

RUN apt -y install zsh && sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# Expose the port for access
EXPOSE 443

# Run the Nginx server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
