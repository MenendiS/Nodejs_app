# Use Node.js LTS version as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package.json .

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 3000 for the application
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
