#!/bin/bash

#make sure that all commands working proprly
set -e

#starting service
service mariadb start

#waiting for mariadb to fully start
sleep 1
#creating a adata base
mysql -u root -e  "CREATE DATABASE IF NOT EXISTS $DB_NAME;" 
mysql -u root -e  "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';" 
mysql -u root -e  "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';"
mysql -u root -e  "FLUSH PRIVILEGES;"

#stoping mariadb
service mariadb  stop

#rerun mariadb
mysqld 
