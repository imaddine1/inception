service php7.4-fpm start
service php7.4-fpm stop
#sleep 1
mkdir /var/www/html/wordpress
cd /var/www/html/wordpress
wp core download --allow-root
wp core config --dbname=$MY_DATABASE --dbuser=$MY_USER --dbpass=$MY_PASS --dbhost=$MY_HOST --path=/var/www/html/wordpress --allow-root
wp core install --url=localhost --title=$BLOG_TITLE --admin_user=$AD_USER --admin_password=$AD_PASS --admin_email=$AD_EMAIL --path=/var/www/html/wordpress  --allow-root
wp user create $SP_USER $SP_EMAIL --role=subscriber --user_pass=$SP_PASS --path=/var/www/html/wordpress  --allow-root

php-fpm7.4 -F
