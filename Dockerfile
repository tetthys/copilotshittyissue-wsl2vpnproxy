# Use the official Ubuntu 20.04 image as the base
FROM ubuntu:20.04

# Set environment variables to avoid interactive installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install Squid
RUN apt-get update && \
    apt-get install -y squid

# Copy custom Squid configuration file
COPY squid.conf /etc/squid/squid.conf

# Expose the Squid port
EXPOSE 3128

# Run Squid in the foreground
CMD ["squid", "-N"]