FROM debian:latest

RUN apt-get -y update && apt-get -y install nginx openssl
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/localhost.key -out /etc/nginx/ssl/localhost.crt -subj "/C=NL/ST=Amsterdam/L=Amsterdam/O=Codam/OU=fpolycar/CN=fpolycar/"

COPY ./conf/nginx.conf /etc/nginx/conf.d
COPY ./index.html /usr/local/nginx/html/index.html

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]