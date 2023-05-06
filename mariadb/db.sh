service mariadb start
mysql -e "CREATE DATABASE IF NOT EXISTS wordpress ;"
mysql -e "CREATE USER IF NOT EXISTS imad@'%' IDENTIFIED BY 'imad123' ;"
mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO imad@'%' ;"
#mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MAIN_ROOT';"
service mariadb stop
#kill $(cat /var/run/mysqld/mysqld.pid)
mysqld_safe