#!/bin/bash

clear
#DEFINED COLOR SETTINGS
RED=$(tput setaf 1 && tput bold)
GREEN=$(tput setaf 2 && tput bold)
STAND=$(tput sgr0)
BLUE=$(tput setaf 6 && tput bold)

defaultpath=$PWD                                       
cat << EOF
 
             _____ _     _____      _   
            |  __ \ |   |  _  |    | |  
            | |  \/ |__ | |/' | ___| |_ 
            | | __| '_ \| |/| |/ __| __|
            | |_\ \ | | \ |_/ /\__ \ |_ 
            \____/_ | |_|\___/ |___/\__|
                            
      +-------------------------------------+
      |      Auto Enumeration Script        |
      |   By Gh0st | Hackerschool France    |
      |       http://hackschool.fr          |
      |            Version 1.0              |
      +-------------------------------------+

EOF

echo ""
echo "     Choice   Description";
echo ""
echo "       1.  Start a ping your target";
echo "       2.  Launched a whois search";
echo "       3.  Recover subdomains with dnsmap";
echo "       4.  See the path between you and your target with traceroute";
echo "       5.  Retrieve information about the dns";
echo "       6.  Find the administration page";
echo "       7.  Identify different domain and different emails";
echo "       8.  Identify different versions of web programs";
echo "       9.  Launched a scan whit NMAP";
echo "       10. Joomla & Wordpress Finder";
echo "       11. Ultimate Footprinting";
echo "       12. Exit script";
echo ""
echo ""
read -p " Please enter your choice : " menuoption
echo ""
if [ "$menuoption" = "1" ]; then
read -p " Enter your target {google.com} : " target
echo ""
ping -c 4 $target
echo ""
read -p " Please press enter to return to the menu "
bash ghost.sh
else
if [ "$menuoption" = "2" ]; then
read -p " Enter your target {google.com} : " target
echo ""
whois $target
echo ""
read -p " Please press enter to return to the menu "
bash ghost.sh
else
if [ "$menuoption" = "3" ]; then
read -p " Enter your target {google.com} : " target
echo ""
dnsmap $target
echo ""
read -p " Please press enter to return to the menu "
bash ghost.sh
else
if [ "$menuoption" = "4" ]; then
read -p " Enter your target {google.com} : " target
echo ""
echo "Network interfaces found:"$BLUE
ls /sys/class/net/
echo ""
echo $STAND"Please type the name of your network interface Example: eth0 "
read IFACE;
echo ""
tcptraceroute -i $IFACE $target
echo ""
read -p " Please press enter to return to the menu "
bash ghost.sh
else
if [ "$menuoption" = "5" ]; then
read -p " Enter your target {google.com} : " target
echo ""
fierce --domain $target
echo ""
read -p " Please press enter to return to the menu "
bash ghost.sh
else
if [ "$menuoption" = "6" ]; then
#cd $defaultpath/tools
perl $defaultpath/opt/tools/admin.pl
echo ""
read -p " Please press enter to return to the menu "
bash ghost.sh
else
if [ "$menuoption" = "7" ]; then
read -p " Enter your target {google.com} : " target
echo ""
theHarvester -d $target -l 500 -b urlscan
echo ""
read -p " Please press enter to return to the menu "
bash ghost.sh
else
if [ "$menuoption" = "8" ]; then
read -p " Enter your target {google.com} : " target
echo ""
whatweb -v $target
echo ""
read -p " Please press enter to return to the menu "
bash ghost.sh
else
if [ "$menuoption" = "9" ]; then
read -p " Enter your target IP {216.58.211.78} : " target
echo ""
nmap -Pn -F -T4 -sV -A -v -oM $target.txt $target
echo ""
read -p " Please press enter to return to the menu "
bash ghost.sh
else
if [ "$menuoption" = "10" ]; then
read -p " Enter your target IP {216.58.211.78} : " target
echo ""
php $defaultpath/opt/tools/jwp.php -j $target
php $defaultpath/opt/tools/jwp.php -w $target
echo ""
read -p " Please press enter to return to the menu "
bash ghost.sh
else
if [ "$menuoption" = "11" ]; then
read -p " Enter the target EG. domain.org : " target
echo ""
echo ""
whois $target
echo ""
echo ""
dig $target any
echo ""
echo ""
host -l $target
echo ""
echo ""
echo "Network interfaces found:"$BLUE
ls /sys/class/net/
echo ""
echo $STAND"Please type the name of your network interface Example: eth0 "
read IFACE;
echo ""
tcptraceroute -i $IFACE $target
echo ""
echo ""
dnsenum --enum -f $PWD/opt/tools/dns.txt --update a -r $target
echo ""
echo ""
dnsmap $target
echo ""
echo ""
dnstracer $target
echo ""
echo ""
whatweb -v $target
echo ""
echo ""
sudo theHarvester -d $target -l 500 -b urlscan
echo ""
echo ""
wafw00f $target
echo ""
echo ""
fierce --domain $target
echo ""
echo ""
bash $PWD/opt/tools/lbd.sh $target
echo ""
echo ""
perl $PWD/opt/tools/smtp-user-enum.pl -M VRFY -U $PWD/opt/tools/users.txt -t $target
echo ""
echo ""
nmap -Pn -F -T4 -sV -A -v --open $target -oM $target.txt
echo ""
echo ""
amap -i $PWD/$target.txt
echo ""
echo ""
$PWD/opt/tools/httprint -h $target -s $PWD/opt/tools/signatures.txt -P0
echo ""
echo ""
python2 $PWD/opt/tools/UAtester.py -u $target -d BC
echo ""
echo ""
read -p " Enter your target IP : " target
php $PWD/opt/tools/jwp.php -j $target
echo ""
echo ""
php $PWD/opt/tools/jwp.php -w $target
read -p "Please press ENTER to return to the menu"
bash ghost.sh
else
if [ "$menuoption" = "12" ]; then
exit;
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi
fi