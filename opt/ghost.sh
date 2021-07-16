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

if [ $menuoption = "1" ]; then
read -p " Enter your target {google.com} : " target
echo ""
ping -c 4 $target
echo ""
read -p " Please press enter to return to the menu "
cd $defaultpath
bash ghost.sh
else

if [ $menuoption = "2" ]; then
read -p " Enter your target {google.com} : " target
echo ""
whois $target
echo ""
read -p " Please press enter to return to the menu "
cd $defaultpath
bash ghost.sh
else

if [ $menuoption = "3" ]; then
read -p " Enter your target {google.com} : " target
echo ""
cd /root
dnsmap $target
echo ""
read -p " Please press enter to return to the menu "
cd $defaultpath
bash ghost.sh
else

if [ $menuoption = "4" ]; then
read -p " Enter your target {google.com} : " target
echo ""
echo "Network interfaces found:"$BLUE
ls /sys/class/net/
echo ""
echo $STAND"Please type the name of your network interface Example: eth0 "
read IFACE;
echo ""
cd /root
tcptraceroute -i $IFACE $target
echo ""
read -p " Please press enter to return to the menu "
cd $defaultpath
bash ghost.sh
else

if [ $menuoption = "5" ]; then
read -p " Enter your target {google.com} : " target
echo ""
fierce --domain $target
echo ""
read -p " Please press enter to return to the menu "
cd $defaultpath
bash ghost.sh
else

if [ $menuoption = "6" ]; then
cd $defaultpath/tools
perl admin.pl
echo ""
read -p " Please press enter to return to the menu "
cd $defaultpath
bash ghost.sh
else

if [ $menuoption = "7" ]; then
read -p " Enter your target {google.com} : " target
echo ""
cd /root
theharvester -d $target -l 500 -b google
echo ""
read -p " Please press enter to return to the menu "
cd $defaultpath
bash ghost.sh
else

if [ $menuoption = "8" ]; then
read -p " Enter your target {google.com} : " target
echo ""
whatweb -v $target
echo ""
read -p " Please press enter to return to the menu "
cd $defaultpath
bash ghost.sh
else

if [ $menuoption = "9" ]; then
read -p " Enter your target IP {216.58.211.78} : " target
echo ""
nmap -Pn -F -T4 -sV -A -v $target.txt $target
echo ""
read -p " Please press enter to return to the menu "
cd $defaultpath
bash ghost.sh
else

if [ $menuoption = "10" ]; then
read -p " Enter your target IP {216.58.211.78} : " target
echo ""
cd $defaultpath/tools
php jwp.php -j $target
php jwp.php -w $target
echo ""
read -p " Please press enter to return to the menu "
cd $defaultpath
bash ghost.sh
else

if [ $menuoption = "11" ]; then
echo "Enter the target EG. domain.org"
read target
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
cd /root
tcptraceroute -i $IFACE $target
echo ""
echo ""
cd $defaultpath/tools
dnsenum --enum -f dns.txt --update a -r $target
echo ""
echo ""
cd /root
dnsmap $target
echo ""
echo ""
cd /root
dnstracer $target
echo ""
echo ""
cd /root
whatweb -v $target
echo ""
echo ""
cd /root
sudo theHarvester -d $target -l 500 -b google
echo ""
echo ""
cd /root
wafw00f $target
echo ""
echo ""
cd /opt
fierce -dns $target
echo ""
echo ""
cd $defaultpath/tools
./lbd.sh $target
echo ""
echo ""
cd $defaultpath/tools
perl smtp-user-enum.pl -M VRFY -U users.txt -t $target
echo ""
echo ""
cd /root
nmap -Pn -F -T4 -sV -A -v $target.txt $target
echo ""
echo ""
amap -i $target.txt
echo ""
echo ""
cd $defaultpath/tools
./httprint -h $target -s signatures.txt -P0
echo ""
echo ""
cd $defaultpath/tools
python UAtester.py -u $target -d BC
echo ""
echo ""
read -p " Enter your target IP : " target
cd $defaultpath/tools
php jwp.php -j $target
echo ""
echo ""
cd $defaultpath/tools
php jwp.php -w $target
read -p "Please press ENTER to return to the menu"
cd $defaultpath
bash ghost.sh
else


if [ $menuoption = "12" ]; then
exit
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
