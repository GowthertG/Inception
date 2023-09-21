FROM debian:bullseye
RUN apt-get update -y
RUN apt-get install nginx -y
RUN rm /usr/share/nginx/html/*
RUN apt-get install -y openssl
RUN openssl req -x509 -newkey rsa:4096 -keyout /etc/nginx/key.pem -out /etc/nginx/cert.pem -days 365 -nodes -subj '/CN=localhost'
COPY index.html /usr/share/nginx/html
COPY custom.conf /etc/nginx/conf.d/
CMD nginx -g 'daemon off;'
