# https://github.com/alterway/docker-php/blob/master/doc-php-apache.md
FROM webdevops/php-nginx:7.4

# Copy sources
#COPY . /var/www/html
WORKDIR /app
# Give tmp directory write permissions
RUN mkdir /app/tmp
RUN chmod -R 777 /app/tmp

# Enable Apache modules and PHP extensions
ENV HTTPD_a2enmod 'rewrite status expires'
#ENV PHP_php5enmod 'mysql mysqli pdo_mysql'

ENV PHP_max_execution_time 300

#ENV DEBUG 0
#ENV DB_HOST 192.
#ENV DB_USER _user
#ENV DB_PASSWORD m1Eadadaci
#ENV DB_NAME _bkp


# Expose port 80
#EXPOSE 80