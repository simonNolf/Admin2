
# A taper dans la commande docker run
#MYSQL_ROOT_PASSWORD=secret

From mysql:latest

EXPOSE 3306

# installation des package
RUN apt update && apt-get upgrade -y
RUN apt-get install nano -y

# Création de la 'working directory'
WORKDIR /etc/

COPY ./config/ /docker-entrypoint-initdb.d/

