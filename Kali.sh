#Zahid Dewan


apt-get clean
#update
apt-get update 
#upgrade
apt-get upgrade -y 
#distribution upgrade
apt-get dist-upgrade -y
#change user password
passwd
#install check root kit
apt-get install chkrootkit
#edit hostname
leafpad /etc/hostname  
leafpad /etc/hosts
#database update
updatedb
#disable SSH 
/etc/init.d/ssh stop
#disable portmap
/etc/init.d/portmap stop
#disable cups
/etc/init.d/cups stop
#modify ssh_config file
nano /etc/ssh/sshd_config
cat /etc/shadow | awk -F: '($2==""){print $1}' > ./no_password_users.txt
echo Running chkrootkit. Wait!
sudo chkrootkit > ./chkrootkit_log.txt
#install lynis 
apt-get install lynis
apt-get -f install
apt-get install lynis
echo Running lynis. Wait! 
lynis audit system > ./lynis_log.txt
#check listening ports
netstat -tulpn > ./open_ports_log.txt
#update iptables
echo Close Unwanted Ports using: iptables -A INPUT -p tcp --dport PORT_NUMBER -j DROP 
iptables -L -n -v > ./iptables_log.txt
#install rkhunter
apt-get install rkhunter
rkhunter --update
rkhunter -c
#reboot now 
reboot now 