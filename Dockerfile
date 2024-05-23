# Use the official Node.js 14 image as the base image
FROM node:16-alpine

# Set the working directory in the container to /app
WORKDIR /app

# Copy the package.json and package-lock.json files into the container
COPY package*.json ./

# Install the dependencies
RUN yarn install

# Copy the rest of the application code into the container
COPY . .

# # Build the Gatsby site
# RUN yarn build

# Expose port 8000 for the Gatsby development server
EXPOSE 8000

# Start the Gatsby development server
CMD ["yarn", "start"]

# docker build -t gatsby-portfolio .
# docker run -p 8000:8000 gatsby-portfolio