FROM debian:stable

RUN apt update -y && apt upgrade -y

# Install Redis and Redis server
RUN apt install -y redis redis-server

# Modify the Redis configuration:
# Disable binding to localhost and IPv6 address (::1)
RUN sed -i "s|bind 127.0.0.1 -::1|#bind 127.0.0.1 -::1|g" /etc/redis/redis.conf

# Set the maximum memory limit for Redis (100MB in this case)
RUN sed -i "s|# maxmemory <bytes>|maxmemory 100mb|g" /etc/redis/redis.conf

# Set the memory eviction policy to "allkeys-lru" (Least Recently Used)
RUN sed -i "s|# maxmemory-policy noeviction|maxmemory-policy allkeys-lru|g" /etc/redis/redis.conf

# Start the Redis server with protected mode disabled
CMD ["redis-server", "--protected-mode no"]
