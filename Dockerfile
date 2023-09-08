FROM php:8.0-apache
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update && apt-get upgrade -y
COPY . /var/www/
COPY dir.conf /etc/apache2/mods-available/dir.conf
RUN cat /etc/apache2/mods-available/dir.conf
RUN rm /etc/apache2/mods-enabled/dir.conf
RUN ln -s /etc/apache2/mods-available/dir.conf /etc/apache2/mods-enabled/dir.conf
RUN cat /etc/apache2/mods-available/dir.conf
RUN cat /etc/apache2/mods-enabled/dir.conf
RUN cat /etc/apache2/sites-available/000-default.conf
RUN a2enmod dir

