# Use official PHP with Apache
FROM php:8.1-apache

# Install extensions required by PDO MySQL
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Enable Apache mod_rewrite (common for PHP apps)
RUN a2enmod rewrite

# Copy project files into container
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Expose Apache port
EXPOSE 80
