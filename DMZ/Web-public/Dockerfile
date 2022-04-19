FROM php:7.2-apache

# Ajout de différents packages.
RUN apt update -y && apt upgrade -y
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copie des fichiers à implémenter dans le container docker "web".
COPY config/l2-2.ephec-ti.be.conf /etc/apache2/sites-available
COPY config/b2b.l2-2.ephec-ti.be.conf /etc/apache2/sites-available

# lien entre sites-available et sitesenabled
RUN ln -s /etc/apache2/sites-available/l2-2.ephec-ti.be.conf /etc/apache2/sites-enabled
RUN ln -s /etc/apache2/sites-available/b2b.l2-2.ephec-ti.be.conf /etc/apache2/sites-enabled

# Création des répertoire dans le container
RUN mkdir /var/www/b2b.l2-2.ephec-ti.be
RUN mkdir /var/www/l2-2.ephec-ti.be


# copier des fichier à affihcer contenant les pages web
COPY /www/public/index.html /var/www/html/index.html
COPY /www/b2b/index.php /var/www/html/b2b.l2-2.ephec-ti.be/index.php
