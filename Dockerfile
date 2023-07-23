# Use the official Node.js image as the base image
FROM node:14 as builder

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the frontend files to the container
COPY . .

# Build the production version of the React app
RUN npm run build

# Use a lightweight image to serve the built app
FROM nginx:latest

# Remove the default Nginx configuration
RUN rm -rf /etc/nginx/conf.d/*

# Copy the production build from the builder stage to the Nginx root directory
COPY --from=builder /app/dist /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]built
