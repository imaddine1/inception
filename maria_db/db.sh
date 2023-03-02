#!/bin/bash
service mariadb start

mariadb < database.sql

service mariadb stop

sleep 1

mysqld_safe
