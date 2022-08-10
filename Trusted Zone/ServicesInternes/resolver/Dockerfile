FROM ubuntu:latest

RUN apt-get update && apt-get install -y bind9
RUN apt-get install -y dnsutils net-tools iputils-ping

COPY named.conf /etc/bind/named.conf

CMD ["named", "-c", "/etc/bind/named.conf", "-g"]