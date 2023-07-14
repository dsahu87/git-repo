FROM ubuntu

# Update the package lists and install Apache
RUN apt-get update && apt-get install -y apache2

# Replace default index.html with new index.html
# RUN rm /var/www/html/index.html
# ADD ./index.html /var/www/html/

# Expose port 82
EXPOSE 82

# Start Apache in the foreground when the container starts
CMD ["apache2ctl", "-D", "FOREGROUND"]
