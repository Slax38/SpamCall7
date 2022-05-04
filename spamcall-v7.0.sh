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
# Banner
sleep 2.0
echo -e "\n\n${redColour}[*] VERIFICANDO REQUISITOS PARA CONTINUAR..."
sleep 0.5
# Check if there is an internet connection
ping -c 1 google.com > /dev/null 2>&1
if [[ "$?" == 0 ]]; then
echo ""
sleep 3.5
echo -e "$redColour[✔][Conexion Wifi]............[!DETECTADA! ]"
sleep 1.5
else
echo ""
echo -e "$redColour[!][Conexion Wifi]............[!NO DETECTADA! ]"
fi

# Check if appt exists
which aapt > /dev/null  2>&1
if [ "$?" -eq "0" ]; then
echo -e "$redColour[✔][Aapt]............[!DETECTADO! ]"
sleep 1.5
else
echo ""
echo -e "$redColour[!][Aapt]............[!NO DETECTADO! ]"
sleep 1.5
fi
echo -e $redColour
echo -n [*] !REQUISITOS DETECTADOS CARGANDO SCRIPT!...=;
sleep 3 & while [ "$(ps a | awk '{print $1}' | grep $!)" ] ; do for X in '-' '\' '|' '/'; do echo -en "\b$X"; sleep 0.1; done; done
echo ""
python3 script.py