FROM ubuntu:latest


RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y mutt
RUN apt-get install -y dnsutils
RUN apt-get install -y iputils-ping
RUN apt-get install -y net-tools
RUN apt-get install -y nano
RUN apt install wget -y
RUN apt install lynx -y
RUN apt install -y smbclient

RUN adduser atelier
RUN touch /var/mail/atelier

COPY .muttrc /home/atelier/

CMD sleep infinity
