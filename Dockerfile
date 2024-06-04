# Use the official Node.js image as a base
FROM node:latest

# Set the working directory to /app
WORKDIR /app

# Copy all project files to the working directory
COPY . .

# Install dependencies
RUN npm install

# Copy docker-entrypoint
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# Run script
ENTRYPOINT ["docker-entrypoint.sh"]
