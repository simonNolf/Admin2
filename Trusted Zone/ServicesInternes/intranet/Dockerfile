# Choix image
FROM php:8.0-apache

# Installation des outils nécessaire
RUN apt-get update -y
RUN apt-get install iputils-ping dnsutils lynx net-tools vim openssl -y
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copie des fichier de config
COPY index.php /var/www/html/index.php
COPY intranet.conf /etc/apache2/sites-available/intranet.conf

RUN a2enmod ssl
RUN openssl req -new -x509 -subj "/C=BE/ST=Brabant-wallon/L=Louvain-La-Neuve/O=Ephec/OU=IT/CN=www.intranet.woodytoys" -days 365 -nodes -out /etc/ssl/certs/intranet.crt -keyout /etc/ssl/private/intranet.key

# activer server apache
RUN a2dissite 000-default.conf
RUN a2ensite intranet.conf
