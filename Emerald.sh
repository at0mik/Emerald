cyan='\e[0;36m' 
green='\033[92m'  
red='\e[1;31m' 
yel='\e[0;33m' 
orange='\e[38;5;166m'
 
clear

echo -e $yel""

echo -e "   ___  ___ ___    ___  ____    ____  _      ___    "
echo -e "  /  _]|   |   |  /  _]|    \  /    || |    |   \   "
echo -e " /  [_ | _   _ | /  [_ |  D  )|  o  || |    |    \  "
echo -e "|    _]|  \_/  ||    _]|    / |     || |___ |  D  | "
echo -e "|   [_ |   |   ||   [_ |    \ |  _  ||     ||     | "
echo -e "|     ||   |   ||     ||  .  \|  |  ||     ||     | "
echo -e "|_____||___|___||_____||__|\_||__|__||_____||_____| "
                                                           

echo -e $cyan""
echo -e "1 Net Discover"
echo -e "2 Normal Scan"
echo -e "3 Ping Probe"
echo -e "4 Traceroute"
echo -e "5 UDP Scan"
echo -e "6 Service Scan"
echo -e "7 DNS Resolver"
echo -e "8 OS Detection"
echo -e "9 Idle Scan"
echo -e "10 Full Scan"

echo -e $yel""

#Question

read -p " emerald@scanner~: " attacks

#Scanners

if [ $attacks = "1" ]
then
clear
figlet "Net Discover"
read -p " range: " target1
sudo netdiscover -r $target1
fi

if [ $attacks = "2" ]
then
clear
figlet "Normal"
figlet "Scan"
read -p " target: " target2
nmap $target2
fi

if [ $attacks = "3" ]
then
clear
figlet "Ping"
figlet "Probe"
read -p " target: " target3
nmap -Pn $target3
fi

if [ $attacks = "4" ]
then
clear
figlet "Trace"
figlet "Route"
read -p " target: " target4
sudo nmap $target4 --traceroute
fi

if [ $attacks = "5" ]
then
clear
figlet "UDP"
figlet "Scan"
read -p " target: " target5
sudo nmap $target5 -sU
fi

if [ $attacks = "6" ]
then
clear
figlet "Service"
figlet "Scan"
read -p " target: " target6
nmap $target6 -sV
fi

if [ $attacks = "7" ]
then
clear
figlet "DNS"
figlet "Resolver"
read -p " target: " target7
nmap $target7 --system-dns
fi

if [ $attacks = "8" ]
then
clear
figlet "OS"
figlet "Detection"
read -p " target: " target8
sudo nmap $target8 -O
fi

if [ $attacks = "9" ]
then
clear
figlet "Idle"
figlet "Scan"
read -p " zombie: " target9
read -p " port: " target10
read -p " target: " target11
sudo nmap -sI $target9 $target10[:$target11]
fi

if [ $attacks = "10" ]
then
clear
figlet "Full"
figlet "Scan"
read -p " target: " target12
nmap $target12 --version-all
fi

