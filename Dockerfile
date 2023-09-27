# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if present) to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application source code to the working directory
COPY . .

# Build the application (replace this with your build command)
RUN npm run build

# Expose a port if your application listens on a specific port
# EXPOSE 3000

# Define the command to start your application
CMD [ "npm", "start" ]
