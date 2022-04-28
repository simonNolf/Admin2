FROM ubuntu:focal

RUN apt update && apt upgrade -y
# install postfix
RUN apt install postfix dovecot vim net-tools mailutils mutt telnet -y

EXPOSE 25
EXPOSE 143