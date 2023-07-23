# Use the official Node.js image as the base image
FROM node:14 as builder

# Set the working directory in the container
WORKDIR /app

COPY . /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install


EXPOSE 5173

CMD ["npm", "start"]





# Create a temporary directory and copy the rest of the frontend files there
# RUN mkdir /temp
# COPY . /temp

# Move the files from the temporary directory to the /app directory
# RUN mv /temp/* /app/

# Build the production version of the React app
# RUN npm run build

# Use a lightweight image to serve the built app
# FROM nginx:latest

# Remove the default Nginx configuration
# RUN rm -rf /etc/nginx/conf.d/*

# Copy the production build from the builder stage to the Nginx root directory
# COPY --from=builder /app/dist /usr/share/nginx/html

# Expose port 80 to the outside world
# EXPOSE 8989

# Start Nginx when the container starts
# CMD ["nginx", "-g", "daemon off;"]
