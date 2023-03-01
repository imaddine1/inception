CREATE DATABASE wp_db;

CREATE USER 'imad'@'localhost' identified by 'imad123';

GRANT ALL PRIVILEGES ON wp_db.* TO 'imad'@'localhost';

FLUSH PRIVILEGES;
