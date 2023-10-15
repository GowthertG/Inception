apt install vim php php-fpm php-mysql curl mariadb-client -y

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar &&  mv wp-cli.phar /usr/local/bin/wp

sed -i 's/listen = .*/listen = 0.0.0.0:90000/' /etc/php/7.4/fpm/pool.d/www.conf

mkdir -p /run/php/

mkdir -p /var/www/html/

cd /var/www/html/

wp core download  --allow--root

sleep 10

php-fpm7.4 -F
