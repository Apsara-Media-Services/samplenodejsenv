# Use an official Node.js runtime (Alpine version) as the base image
FROM node:20-alpine

# Enable corepack (includes yarn)
RUN corepack enable

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and yarn.lock files
COPY package.json yarn.lock ./

# Install the dependencies using yarn
RUN yarn install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["yarn", "start"]
