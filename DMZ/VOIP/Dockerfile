#source add sudo to container : https://stackoverflow.com/questions/25845538/how-to-use-sudo-inside-a-docker-container
#source code to create dockerfile: https://www.howtoforge.com/how-to-install-asterisk-17-on-ubuntu-2004/
FROM debian:latest
#install updates and upgrades
RUN apt-get update 
RUN apt-get -y upgrade
#install additional packages
RUN apt-get -y install systemd vim nano dnsutils net-tools asterisk
#change timezone
RUN echo "Europe/Brussels" | tee /etc/timezone
#copy config files
COPY config/sip.conf /etc/asterisk/sip.conf
COPY config/extensions.conf /etc/asterisk/extensions.conf
COPY config/voicemail.conf /etc/asterisk/voicemail.conf
#Run asterisk
#ENTRYPOINT [ "/usr/sbin/asterisk", "-f" ]
#CMD ["asterisk", "-f"]
