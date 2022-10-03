#!/usr/bin


redColour='\e[1;31m'
default='\e[0m'
yellow='\e[0;33m'
orange='\e[38;5;166m'
green='\033[92m'


# Location
path=$(pwd)

# Check root
if [ "$(id -u)" != "0" ] > /dev/null 2>&1; then
echo -e "\n\n${redColour}[!] NO SE DETECTO ACESSO ROOT :(" 1>&2
exit
fi

clear
sleep 2.0 
echo -e "\n\n${redColour}[*] Instalador de dependecias python..."
sleep 0.5
# Check if there is an internet connection
ping -c 1 google.com > /dev/null 2>&1
if [[ "$?" == 0 ]]; then
echo ""
sleep 3.5
echo -e "$redColour[✔][Conexion Wifi]...........[!DETECTADO! ]"
sleep 1.5
else
echo ""
echo -e "$redColour[!][Conexion Wifi]...........[!NO DETECTADO! ]" 
fi
echo -e $redColour
sleep 0.5
echo -n "[*] !INSTALANDO DEPENDENCIAS...!"
sleep 3.6
apt update && apt upgrade -y
apt install python3
pip install requests
apt install getch
pip install py-getch
apt install aapt
apt-get install aapt
apt-get install getch
pip install getch
echo -e "$redColour[*]!DEPENDENCIAS INSTALADAS CORRECTAMENTE...!"
sleep 2.0
echo -n "[*]!EJECUTANDO EL PROGRAMA...!"
sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done 
clear
bash spamcall-v7.0.sh
