# Use a high-performance Nginx image
FROM nginx:alpine

# Set the working directory to Nginx html directory
WORKDIR /usr/share/nginx/html

# Copy all the static website files from the project folder to the container
COPY . /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80

# Default command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
