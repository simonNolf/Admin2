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

COPY ./smb.conf /etc/samba/smb.conf
COPY ./shares.conf /etc/samba/shares.conf

CMD tail -f /dev/null