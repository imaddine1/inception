service mariadb start
mysql -e "CREATE DATABASE $MYSQL_DATABASE;"
mysql -e "CREATE USER $MYSQL_USER@$MYSQL_HOST identified by '$MYSQL_PASSWORD;'"
mysql -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO $MYSQL_USER@$MYSQL_HOST;"
service mariadb stop
sleep 1
mysqld_safe