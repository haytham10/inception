FROM debian:stable

RUN apt update -y && apt upgrade -y

# Install Nginx web server
RUN apt install -y nginx

# Expose port 443 for HTTPS
EXPOSE 443

# Set the command to start Nginx with the specified options (daemon off; to run Nginx in the foreground)
CMD ["nginx", "-g", "daemon off;"]
