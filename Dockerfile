# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy the index.html file from the current directory to the default Nginx directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Set the default command to start Nginx
CMD ["nginx", "-g", "daemon off;"]
