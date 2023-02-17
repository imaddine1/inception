FROM alpine

# first update the alpine && add openrc for service command to work && now add nginx
RUN apk update && apk add openrc && apk add nginx 

RUN openrc && touch /run/openrc/softlevel

# turn on nginx
#RUN rc-service nginx start

#RUN /etc/init.d/nginx start

