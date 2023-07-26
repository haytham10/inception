FROM debian:stable

RUN apt update -y && apt upgrade -y

# Install PHP and various PHP extensions needed by Adminer
RUN apt install -y php php-common php-iconv php-json php-gd php-curl php-xml php-mysqli php-imap php-cgi php-pdo php-soap php-posix php-ldap php-ctype php-dom php-simplexml wget

# Set the working directory to /var/www
WORKDIR /var/www

# Download the Adminer release from GitHub and rename it to index.php
RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php
RUN mv adminer-4.8.1.php index.php

# Expose port 8080 to the host system
EXPOSE 8080

# Start the PHP development server to serve Adminer (php: The PHP executable; -S: Run with built-in web server; [::]:8080: Listen on port 8080 for connections; -t: Specify the document root directory)
CMD [ "php", "-S", "[::]:8080", "-t", "/var/www" ]
