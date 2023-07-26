#!/bin/sh

# Initialize MySQL data directory
mysql_install_db

# Start the MariaDB service
service mariadb start

# Check if the database already exists; if not, create it and grant privileges
if [ ! -d "/var/lib/mysql/$MYSQL_DATABASE" ]; then
    mysql -u root -e "DROP DATABASE IF EXISTS test;"
    mysql -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE; GRANT ALL ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
    mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
    mysql -u root -e "FLUSH PRIVILEGES;"
fi

# Shutdown the MySQL server
mysqladmin -u root -p${MYSQL_ROOT_PASSWORD} shutdown

# Start the MySQL server process
exec mysqld --user=mysql