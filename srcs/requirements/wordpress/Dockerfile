FROM debian:stable

# Set arguments for MySQL database configuration and PHP version
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG VERSION=7.4

# Set the working directory to /var/www
WORKDIR /var/www

# Update and upgrade the package repositories and install required packages
RUN apt update -y && apt upgrade -y && apt install -y wget unzip gnupg2 lsb-release

# Add the ondrej/php repository and install PHP and its extensions
RUN wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg \
    && echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list \
    && apt update -y && apt install -y php${VERSION} php${VERSION}-fpm php${VERSION}-mysqli php${VERSION}-json php${VERSION}-curl php${VERSION}-dom php${VERSION}-exif php${VERSION}-fileinfo php${VERSION}-mbstring php${VERSION}-xml php${VERSION}-zip

# Configure PHP-FPM to listen on port 9000
RUN sed -i "s|listen = /run/php/php${VERSION}-fpm.sock|listen = 9000|g" /etc/php/${VERSION}/fpm/pool.d/www.conf

# Download and set up WordPress in the working directory
RUN wget https://wordpress.org/latest.zip && unzip latest.zip && cp -rf wordpress/* . && rm -rf wordpress latest.zip && rm -rf wp-config-sample.php && chmod -R 777 *

# Download and install wp-cli
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

# Create the directory for PHP-FPM socket
RUN mkdir -p /run/php/

# Copy the script.sh file to the working directory
COPY ./tools/script.sh .

# Grant execute permission to the script and execute it
RUN chmod +x script.sh && ./script.sh

# COPY setup-users script to the working directory
COPY ./tools/setup-users.sh .

# Grant execute permission to the script and execute it
RUN chmod +x setup-users.sh

# Set the command to start PHP-FPM
CMD ["/usr/sbin/php-fpm7.4", "-F"]
