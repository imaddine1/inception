<?php
$v1=getenv('MYSQL_DATABASE');
$v2=getenv('MYSQL_USER');
$v3=getenv('MYSQL_PASSWORD');
$v4=getenv('MYSQL_HOST');
echo nl2br("$v1\n");
echo nl2br("$v2\n");
echo nl2br("$v3\n");
echo nl2br("$v4\n");
?>