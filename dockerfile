# Use official Node.js image as base image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the app port
EXPOSE 3000

# Command to run the app
CMD ["node", "app.js"]
