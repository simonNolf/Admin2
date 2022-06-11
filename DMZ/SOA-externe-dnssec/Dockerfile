# image à partir d'ubuntu 20.04
FROM ubuntu:focal

# Mettre à jour tous les packets
RUN apt update && apt upgrade -y
# Installer bind et autres programme utile
RUN apt install bind9 bind9utils dnsutils net-tools vim iputils-ping -y

RUN apt install -y nano
RUN apt install -y systemctl

# Création du dossier keys
RUN mkdir /etc/bind/keys


COPY named.conf /etc/bind
COPY named.conf.local /etc/bind
COPY named.conf.options /etc/bind
COPY db.l2-2.ephec-ti.be /etc/bind

EXPOSE 53
EXPOSE 953

# lancer la config bind
CMD named -g


