#!/bin/sh

# Create a directory for vsftpd to use as a session directory
mkdir -p /var/run/vsftpd/empty

# Create a new user with the FTP_USER as the username and /var/www as the home directory
adduser --home /var/www ${FTP_USER}

# Set the password for the FTP_USER
echo ${FTP_USER}:${FTP_PASSWORD} | chpasswd

# Add the FTP_USER to the root group to allow access to necessary files
adduser ${FTP_USER} root

# Start the VSFTPD server with the configuration file /etc/vsftpd.conf
exec /usr/sbin/vsftpd /etc/vsftpd.conf
