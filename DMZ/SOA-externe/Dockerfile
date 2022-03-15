# image à partir d'ubuntu 20.04
FROM ubuntu:focal

# Mettre à jour tous les packets
RUN apt update && apt upgrade -y
# Installer bind et autres programme utile
RUN apt install bind9 bind9utils dnsutils net-tools iputils-ping -y

COPY named.conf /etc/bind
COPY l2-2.ephec-ti.be /etc/bind