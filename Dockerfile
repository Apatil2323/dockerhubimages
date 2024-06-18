FROM ubuntu:latest

# Installing Apache web server
RUN apt-get update && apt-get install -y apache2

# Copy your index.html file to the default document root directory in the Apache container
COPY ./index.html /var/www/html/

# Expose port 80 (default HTTP port)
EXPOSE 80

# Start Apache web server when the container starts
CMD ["apache2ctl", "-D", "FOREGROUND"]
