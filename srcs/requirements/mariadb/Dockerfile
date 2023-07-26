FROM debian:stable

RUN apt update -y && apt upgrade -y

# Install MariaDB server and client
RUN apt install -y mariadb-server mariadb-client

# Create a directory for MariaDB's PID file and set appropriate permissions
RUN mkdir -p /var/run/mysqld && chown -R mysql /var/run/mysqld && chmod -R 777 /var/run/mysqld

# Update the bind-address in the MariaDB configuration file to allow connections from any IP
RUN sed -i "s|bind-address            = 127.0.0.1|bind-address            = 0.0.0.0|g" /etc/mysql/mariadb.conf.d/50-server.cnf

# Copy the script.sh file into the container
COPY ./tools/script.sh .

# Give execute permissions to the script.sh file
RUN chmod +x script.sh

# Set the default command to run the script.sh when the container starts
CMD ["sh", "script.sh"]
