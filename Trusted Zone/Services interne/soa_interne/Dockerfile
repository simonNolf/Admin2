FROM ubuntu:latest

RUN apt update && apt upgrade -y
RUN apt install bind9 bind9utils dnsutils net-tools nano -y 
RUN apt-get install -y iputils-ping
RUN apt-install wget -y

COPY named.conf /etc/bind/named.conf
COPY db.intranet.woodytoys /etc/bind/db.intranet.woodytoys
COPY reverse.intranet /etc/bind/reverse.intranet

CMD ["named", "-c", "/etc/bind/named.conf", "-g"]