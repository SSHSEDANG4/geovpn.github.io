#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
CEKEXPIRED () {
    today=$(date -d +1day +%Y-%m-%d)
    Exp1=$(curl -sS https://raw.githubusercontent.com/geovpn/perizinan/main/main/allow | grep $MYIP | awk '{print $3}')
    if [[ $today < $Exp1 ]]; then
    echo -e "\e[32mSTATUS SCRIPT AKTIF...\e[0m"
    else
    echo -e "\e[31mSCRIPT ANDA EXPIRED!\e[0m";
    echo -e "\e[31mRenew IP letak tempoh banyak kit okay? hehe syg ktk #\e[0m"
    exit 0
fi
}
IZIN=$(curl -sS https://raw.githubusercontent.com/geovpn/perizinan/main/main/allow | awk '{print $4}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "\e[32mPermission Accepted...\e[0m"
CEKEXPIRED
else
echo -e "\e[31mPermission Denied!\e[0m";
echo -e "\e[31mDaftar IP dalam github lok sayang okay? mun dah daftar tapi masih juak permission denied refresh dolok website ya hehe. Love you #\e[0m"
exit 0
fi
clear
cd
NameUser=$(curl -sS https://raw.githubusercontent.com/geovpn/perizinan/main/main/allow | grep $MYIP | awk '{print $2}')
cekdata=$(curl -sS https://raw.githubusercontent.com/geovpn/user-backup/main/$NameUser/$NameUser.zip | grep 404 | awk '{print $1}' | cut -d: -f1)
[[ "$cekdata" = "404" ]] && {
red "Data not found / you never backup"
exit 0
} || {
green "Data found for username $NameUser"
}

echo -e "[ ${green}INFO${NC} ] • Restore Data..."
read -rp "Password File: " -e InputPass
echo -e "[ ${green}INFO${NC} ] • Downloading data.."
mkdir /root/backup
wget -q -O /root/backup/backup.zip "https://raw.githubusercontent.com/geovpn/user-backup/main/$NameUser/$NameUser.zip" &> /dev/null
echo -e "[ ${green}INFO${NC} ] • Getting your data..."
unzip -P $InputPass /root/backup/backup.zip &> /dev/null
echo -e "[ ${green}INFO${NC} ] • Starting to restore data..."
rm -f /backup.zip &> /dev/null
sleep 1
echo Start Restore
cd /root/backup
cp passwd /etc/
sleep 1
echo -e "[ ${green}INFO${NC} ] • Starting to restore data passwd"
cp group /etc/
sleep 1
echo -e "[ ${green}INFO${NC} ] • Starting to restore data group"
sleep 1
cp shadow /etc/
echo -e "[ ${green}INFO${NC} ] • Starting to restore data shadow"
sleep 1
cp gshadow /etc/
echo -e "[ ${green}INFO${NC} ] • Starting to restore data gshadow"
sleep 1
cp -r wireguard /etc/
echo -e "[ ${green}INFO${NC} ] • Starting to restore data wireguard"
sleep 1
cp chap-secrets /etc/ppp/
echo -e "[ ${green}INFO${NC} ] • Starting to restore data chap-secrets"
sleep 1
cp passwd1 /etc/ipsec.d/passwd
echo -e "[ ${green}INFO${NC} ] • Starting to restore data passwd1"
sleep 1
cp ss.conf /etc/shadowsocks-libev/ss.conf
echo -e "[ ${green}INFO${NC} ] • Starting to restore data ss.conf"
sleep 1
cp -r geovpnstore /var/lib/
echo -e "[ ${green}INFO${NC} ] • Starting to restore data geovpnstore"
sleep 1
cp -r sstp /home/
echo -e "[ ${green}INFO${NC} ] • Starting to restore data sstp"
sleep 1
cp -r xray /etc/
echo -e "[ ${green}INFO${NC} ] • Starting to restore data xray"
sleep 1
cp -r trojan-go /etc/
echo -e "[ ${green}INFO${NC} ] • Starting to restore data trojan-go"
sleep 1
cp -r shadowsocksr /usr/local/
echo -e "[ ${green}INFO${NC} ] • Starting to restore data shadowsocksr"
sleep 1
cp -r public_html /home/vps/
echo -e "[ ${green}INFO${NC} ] • Starting to restore data public_html"
sleep 1
cp crontab /etc/
echo -e "[ ${green}INFO${NC} ] • Starting to restore data crontab"
strt
rm -rf /root/backup
rm -f backup.zip
echo
sleep 1
echo -e "[ ${green}INFO${NC} ] • RESTORE DATA SUKSES"
echo
read -n 1 -s -r -p "Press any key to back on menu"
menu-backup
