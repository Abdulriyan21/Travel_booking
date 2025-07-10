# Dockerfile for SQLite Database Container

# Use official lightweight Alpine Linux with SQLite pre-installed
FROM alpine:3.18

# Install SQLite and ensure it's the latest version
RUN apk update && \
    apk add --no-cache sqlite && \
    rm -rf /var/cache/apk/*

# Create directory for the database
RUN mkdir -p /data/db

# Set working directory
WORKDIR /data

# Volume for persistent data storage
VOLUME /data

# Default command to run SQLite interactive shell when container starts
CMD ["sqlite3"]

# Metadata
LABEL maintainer="your.email@example.com"
LABEL description="SQLite Database Container"
LABEL version="1.0"
