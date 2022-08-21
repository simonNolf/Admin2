FROM ubuntu:focal

RUN apt update && apt upgrade -y
# install postfix
RUN apt install postfix dovecot-core dovecot-pop3d dovecot-imapd vim net-tools mailutils mutt telnet -y

COPY ./postfix/main.cf /etc/postfix/main.cf
COPY ./dovecot/dovecot.conf /etc/dovecot/dovecot.conf

EXPOSE 25
EXPOSE 110
EXPOSE 143

RUN adduser contact
RUN adduser atelier
RUN adduser direction
RUN adduser secretariat
RUN adduser compta
RUN adduser commerciaux

COPY ./mailbox/* /var/mail/

RUN chown contact /var/mail/contact
RUN chown atelier /var/mail/atelier
RUN chown direction /var/mail/direction
RUN chown secretariat /var/mail/secretariat
RUN chown compta /var/mail/compta
RUN chown commerciaux /var/mail/commerciaux


RUN service postfix start
RUN service dovecot start

