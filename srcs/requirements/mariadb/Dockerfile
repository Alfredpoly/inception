FROM debian:latest

RUN apt-get -y update && apt-get -y install mariadb-server mariadb-client

COPY ./script/script.sh /var/local/bin/
COPY ./sql/file.sql /var/local/bin/

EXPOSE 3306

CMD ["mysql", "-g", "daemon off;"]