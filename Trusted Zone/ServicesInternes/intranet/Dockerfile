# Choix image
FROM php:8.0-apache

# Installation des outils nécessaire
RUN apt-get update -y
RUN apt-get install iputils-ping dnsutils lynx net-tools nano -y
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copie des fichier de config
COPY index.php /var/www/html/index.php
COPY intranet.conf /etc/apache2/sites-available/intranet.conf

# activer server apache
RUN a2dissite 000-default.conf
RUN a2ensite intranet.conf
