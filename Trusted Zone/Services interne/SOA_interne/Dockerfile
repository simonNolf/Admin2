FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt install bind9 bind9utils net-tools dnsutils -y
RUN apt-get install -y nano
RUN apt install iputils-ping -y


WORKDIR /etc/bind

COPY named.conf /etc/bind/named.conf
COPY db.intranet.woodytoys /etc/bind/db.intranet.woodytoys


CMD ["named", "-c", "/etc/bind/named.conf"]