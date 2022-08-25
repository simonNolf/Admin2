FROM ubuntu:latest

RUN apt update -y
RUN apt upgrade -y
RUN apt-get update 
Run apt-get upgrade 

RUN apt-get install nano -y
RUN apt install net-tools -y
RUN apt install dnsutils -y
RUN apt-get install iputils-ping -y
RUN apt install samba -y
RUN apt-get install smbclient -y
RUN apt install cifs-utils -y 
RUN apt install lynx -y 

RUN groupadd direction
RUN groupadd secretariat
RUN groupadd compta
RUN groupadd atelier

RUN useradd -p samba direction1
RUN useradd -p samba secretariat1
RUN useradd -p samba compta1
RUN useradd -p samba atelier1

RUN usermod -aG direction direction1
RUN usermod -aG secretariat secretariat1
RUN usermod -aG compta compta1
RUN usermod -aG atelier atelier1


COPY ./smb.conf /etc/samba/smb.conf
COPY ./shares.conf /etc/samba/shares.conf

CMD tail -f /dev/null
