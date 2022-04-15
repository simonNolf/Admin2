##Fail2ban
- to install fail to ban on vps 

>`sudo apt-get install -y fail2ban iptables`

*iptables is required for fail2ban to function properly
- to check if the services are installed properly run the following commands:

>`sudo iptables -L`

>`sudo service fail2ban status`

###configuration files
- the configuration files of fail to ban are located at /etc/fail2ban/jail.conf 
- fail2ban logs are found in /home/debian/fail2ban/logs/messages

### when configuration is completed you need to restart fail2ban
>`sudo fail2ban restart`
