FROM debian:stable

RUN apt update -y && apt upgrade -y

# Install VSFTPD (Very Secure FTP Daemon)
RUN apt install -y vsftpd

# Copy the VSFTPD configuration file to the container
COPY ./conf/vsftpd.conf /etc/vsftpd.conf

# Copy the script file to the container
COPY ./tools/script.sh .

# Give execute permissions to the script
RUN chmod +x script.sh

# Expose port 21 for FTP connections
EXPOSE 21

# Run the script when the container starts
CMD ["./script.sh"]
