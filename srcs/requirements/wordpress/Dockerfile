FROM debian:latest

RUN apt-get -y update && apt-get -y install php-fpm

ADD https://wordpress.org/latest.tar.gz /tmp/latest.tar.gz
RUN cd tmp && tar xvf latest.tar.gz && \
    mv /tmp/wordpress/* /var/www && \
    rm -rf wordpress/* && \
    rm latest.tar.gz && \
    chown -R www-data:www-data /var/www

# CMD ["nginx", "-g", "daemon off;"]