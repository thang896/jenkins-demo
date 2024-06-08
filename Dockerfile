# Use the official Apache HTTP Server image from the Docker Hub
FROM httpd:2.4

# Copy the index.html file to the Apache web server directory
COPY index.html /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80

# The default command that runs when the container starts
CMD ["httpd-foreground"]
