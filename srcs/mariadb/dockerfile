FROM debian:bullseye

RUN apt-get update -y

RUN apt-get install mariadb-server -y

RUN sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf

ENV DB_NAME Houssam
ENV DB_USER hhaddouc
ENV DB_PASS houssam123

COPY tools/setup.sh tools/setup.sh

RUN chmod +x tools/setup.sh

CMD ./tools/setup.sh
