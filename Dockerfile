# Use an official Node.js image for the build stage
FROM --platform=linux/amd64 node:20.10.0-bullseye AS build
LABEL authors="Zalubo"

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Build the application
RUN npm run build

# Use a smaller base image for the final stage
FROM --platform=linux/amd64 node:20.10.0-bullseye-slim

# Install serve globally
RUN npm install -g serve

# Copy the built application from the build stage
COPY --from=build /app/build /app/build

# Set the working directory
WORKDIR /app

# Make port 80 available to the world outside this container
EXPOSE 80

# Run the application
CMD ["serve", "-s", "build", "-l", "80"]
