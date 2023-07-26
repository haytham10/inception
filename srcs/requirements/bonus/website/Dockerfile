FROM debian:stable

RUN apt update -y && apt upgrade -y

# Install Nginx web server
RUN apt install -y nginx

# Copy the custom Nginx configuration file from the host machine to the container's /etc/nginx/nginx.conf location
COPY ./conf/nginx.conf /etc/nginx/nginx.conf

# Copy all files from the 'tools' directory on the host machine to the container's /var/www/ location
COPY ./tools/* /var/www/

# Expose port 3000 from the container to the host machine
EXPOSE 3000

# Set the default command to start Nginx with the "daemon off;" option, so it runs in the foreground of the container.
CMD [ "nginx", "-g", "daemon off;" ]
