# Use an official Nginx image as the base image
FROM nginx:latest

# Copy the "index.html" file from the local directory to the default Nginx public directory
COPY frontend/public/index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Set the default command to start Nginx
CMD ["nginx", "-g", "daemon off;"]
