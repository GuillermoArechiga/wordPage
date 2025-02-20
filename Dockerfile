# Use the official Debian-based WordPress image
FROM wordpress:latest

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd

# Set environment variables
ENV WORDPRESS_DB_HOST=db
ENV WORDPRESS_DB_USER=root
ENV WORDPRESS_DB_PASSWORD=root
ENV WORDPRESS_DB_NAME=wordpress

# Expose port 80
EXPOSE 80

# Copy any custom themes or plugins (optional)
# COPY ./themes /var/www/html/wp-content/themes/
# COPY ./plugins /var/www/html/wp-content/plugins/

# Start Apache server
CMD ["apache2-foreground"]
