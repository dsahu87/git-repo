# Use a lightweight base image
FROM nginx:alpine

# Copy the HTML files to the default Nginx web root directory
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# CMD instruction sets the default command for the container
CMD ["nginx", "-g", "daemon off;"]
