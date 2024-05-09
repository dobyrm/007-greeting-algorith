# Use the official Node.js image as a base
FROM node:latest

# Set the working directory to /app
WORKDIR /app

# Copy package*.json files to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files to the working directory
COPY . .

# Build app
RUN npm run build