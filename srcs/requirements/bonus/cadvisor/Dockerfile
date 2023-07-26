FROM debian:stable

RUN apt update -y && apt upgrade -y

RUN apt install -y curl

# Download and install cAdvisor
RUN curl -sSL -o /usr/local/bin/cadvisor https://github.com/google/cadvisor/releases/download/v0.40.0/cadvisor

RUN chmod +x /usr/local/bin/cadvisor

# Expose port 9443 for cAdvisor
EXPOSE 9443

# Start cAdvisor on port 9443
CMD ["/usr/local/bin/cadvisor", "-port", "9443"]
