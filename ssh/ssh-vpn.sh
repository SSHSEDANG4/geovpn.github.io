#!/bin/bash
# My Telegram : https://t.me/sampiiiiu
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# initializing var
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################

BURIQ () {
    curl -sS https://raw.githubusercontent.com/geovpn/perizinan/main/main/allow > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

MYIP=$(curl -sS ipinfo.io/ip)
Name=$(curl -sS https://raw.githubusercontent.com/geovpn/perizinan/main/main/allow | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipinfo.io/ip)
    IZIN=$(curl -sS https://raw.githubusercontent.com/geovpn/perizinan/main/main/allow | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
clear
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
NC='\e[0m'
curl -sS https://raw.githubusercontent.com/geovpn/perizinan/main/ascii-home
echo "SSH & Ovpn"
echo "Progress..."
sleep 3
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION
if [ "$res" = "Permission Accepted..." ]; then
green "Permission Accepted.."
else
red "Permission Denied!"
exit 0
fi
clear
# ==================================================
# Link Hosting Kalian
geovpn="istriku.me/ssh"

# Link Hosting Kalian Untuk Xray
geovpnn="istriku.me/xray" > /dev/null 2>&1

# Link Hosting Kalian Untuk Trojan Go
geovpnnn="istriku.me/trojango" > /dev/null 2>&1

# Link Hosting Kalian Untuk Stunnel5
geovpnnnn="istriku.me/stunnel5" > /dev/null 2>&1

# Link Hosting Kalian Untuk menu
geovpnnnnn="istriku.me/menu" > /dev/null 2>&1

# Link Hosting Kalian Untuk banner
geovpnnnnnn="istriku.me/banner" > /dev/null 2>&1

# Link Hosting Kalian Untuk dom
geovpnnnnnnn="istriku.me/dom" > /dev/null 2>&1

# Link Hosting Kalian Untuk trial
geovpnnnnnnnn="istriku.me/trial" > /dev/null 2>&1

# initializing var
export DEBIAN_FRONTEND=noninteractive
MYIP=$(wget -qO- ipinfo.io/ip);
MYIP2="s/xxxxxxxxx/$MYIP/g";
NET=$(ip -o $ANU -4 route show to default | awk '{print $5}');
source /etc/os-release
ver=$VERSION_ID

#detail nama perusahaan
country=ID
state=Indonesia
locality=Indonesia
organization=geovpn
organizationalunit=geovpn
commonname=geovpn
email=geovpnstore@gmail.com

# simple password minimal
wget -O /etc/pam.d/common-password "https://${geovpn}/password" > /dev/null 2>&1
chmod +x /etc/pam.d/common-password > /dev/null 2>&1

# go to root
cd

# Edit file /etc/systemd/system/rc-local.service
cat > /etc/systemd/system/rc-local.service <<-END
[Unit]
Description=/etc/rc.local
ConditionPathExists=/etc/rc.local
[Service]
Type=forking
ExecStart=/etc/rc.local start
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
SysVStartPriority=99
[Install]
WantedBy=multi-user.target
END

# nano /etc/rc.local
cat > /etc/rc.local <<-END
#!/bin/sh -e
# rc.local
# By default this script does nothing.
exit 0
END

# Ubah izin akses
chmod +x /etc/rc.local

# enable rc local
systemctl enable rc-local
systemctl start rc-local.service

# disable ipv6
echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6
sed -i '$ i\echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6' /etc/rc.local

#update
apt update -y
apt upgrade -y
apt dist-upgrade -y
apt-get remove --purge ufw firewalld -y
apt-get remove --purge exim4 -y

# install wget and curl
apt -y install wget curl

# Install Requirements Tools
apt install ruby -y
apt install python -y > /dev/null 2>&1
apt install make -y
apt install cmake -y > /dev/null 2>&1
apt install coreutils -y
apt install rsyslog -y > /dev/null 2>&1
apt install net-tools -y
apt install zip -y > /dev/null 2>&1
apt install unzip -y
apt install nano -y > /dev/null 2>&1
apt install sed -y
apt install gnupg -y > /dev/null 2>&1
apt install gnupg1 -y
apt install bc -y > /dev/null 2>&1
apt install jq -y
apt install apt-transport-https -y > /dev/null 2>&1
apt install build-essential -y
apt install dirmngr -y > /dev/null 2>&1
apt install libxml-parser-perl -y
apt install neofetch -y > /dev/null 2>&1
apt install git -y
apt install lsof -y > /dev/null 2>&1
apt install libsqlite3-dev -y
apt install libz-dev -y > /dev/null 2>&1
apt install gcc -y
apt install g++ -y > /dev/null 2>&1
apt install libreadline-dev -y
apt install zlib1g-dev -y > /dev/null 2>&1
apt install libssl-dev -y
apt install libssl1.0-dev -y > /dev/null 2>&1
apt install dos2unix -y

# set time GMT +7
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# set locale
sed -i 's/AcceptEnv/#AcceptEnv/g' /etc/ssh/sshd_config

# install

# install
apt-get --reinstall --fix-missing install -y bzip2 gzip coreutils wget screen rsyslog iftop htop net-tools zip unzip wget net-tools curl nano sed screen gnupg gnupg1 bc apt-transport-https build-essential dirmngr libxml-parser-perl neofetch git lsof
echo "clear" >> .profile
echo "figlet -f slant GEO PROJECT | lolcat" >> .profile
echo "sleep 0.5" >> .profile
echo "clear" >> .profile
echo "running " >> .profile
echo "echo -e \" - Script Mod By Geo Project\" | lolcat" >> .profile
echo "echo -e \"\x1b[96m - Silahkan Ketik\x1b[m \x1b[92mMENU\x1b[m \x1b[96mUntuk Melihat daftar Perintah\x1b[m\"" >> .profile

# install webserver
apt -y install nginx php php-fpm php-cli php-mysql libxml-parser-perl
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
curl https://${geovpn}/nginx.conf > /etc/nginx/nginx.conf
curl https://${geovpn}/vps.conf > /etc/nginx/conf.d/vps.conf
sed -i 's/listen = \/var\/run\/php-fpm.sock/listen = 127.0.0.1:9000/g' /etc/php/fpm/pool.d/www.conf
useradd -m vps;
mkdir -p /home/vps/public_html
echo "<?php phpinfo() ?>" > /home/vps/public_html/info.php
chown -R www-data:www-data /home/vps/public_html
chmod -R g+rw /home/vps/public_html
cd /home/vps/public_html
#wget -O /home/vps/public_html/index.html "https://${geovpn}/index.html1"
/etc/init.d/nginx restart
cd

# install badvpn
cd
wget -O /usr/bin/badvpn-udpgw "https://${geovpn}/badvpn-udpgw64" > /dev/null 2>&1
chmod +x /usr/bin/badvpn-udpgw
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 500' /etc/rc.local
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 500' /etc/rc.local
sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500' /etc/rc.local
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7400 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7500 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7600 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7700 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7800 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7900 --max-clients 500

# setting port ssh
sed -i 's/Port 22/Port 22/g' /etc/ssh/sshd_config

# install dropbear
apt -y install dropbear > /dev/null 2>&1
sed -i 's/NO_START=1/NO_START=0/g' /etc/default/dropbear
sed -i 's/DROPBEAR_PORT=22/DROPBEAR_PORT=143/g' /etc/default/dropbear
sed -i 's/DROPBEAR_EXTRA_ARGS=/DROPBEAR_EXTRA_ARGS="-p 109"/g' /etc/default/dropbear
echo "/bin/false" >> /etc/shells
echo "/usr/sbin/nologin" >> /etc/shells
/etc/init.d/dropbear restart

# install squid
cd
apt -y install squid3 > /dev/null 2>&1
wget -O /etc/squid/squid.conf "https://${geovpn}/squid3.conf" > /dev/null 2>&1
sed -i $MYIP2 /etc/squid/squid.conf

# Install SSLH
apt -y install sslh
rm -f /etc/default/sslh

# Settings SSLH
cat > /etc/default/sslh <<-END
# Default options for sslh initscript
# sourced by /etc/init.d/sslh

# Disabled by default, to force yourself
# to read the configuration:
# - /usr/share/doc/sslh/README.Debian (quick start)
# - /usr/share/doc/sslh/README, at "Configuration" section
# - sslh(8) via "man sslh" for more configuration details.
# Once configuration ready, you *must* set RUN to yes here
# and try to start sslh (standalone mode only)

RUN=yes

# binary to use: forked (sslh) or single-thread (sslh-select) version
# systemd users: don't forget to modify /lib/systemd/system/sslh.service
DAEMON=/usr/sbin/sslh

DAEMON_OPTS="--user sslh --listen 0.0.0.0:443 --ssl 127.0.0.1:777 --ssh 127.0.0.1:109 --openvpn 127.0.0.1:1194 --http 127.0.0.1:8880 --pidfile /var/run/sslh/sslh.pid -n"

END

# Restart Service SSLH
service sslh restart
systemctl restart sslh
/etc/init.d/sslh restart
/etc/init.d/sslh status
/etc/init.d/sslh restart

# setting vnstat
apt -y install vnstat > /dev/null 2>&1
/etc/init.d/vnstat restart
apt -y install libsqlite3-dev
wget https://humdi.net/vnstat/vnstat-2.6.tar.gz
tar zxvf vnstat-2.6.tar.gz
cd vnstat-2.6
./configure --prefix=/usr --sysconfdir=/etc && make && make install
cd
vnstat -u -i $NET
sed -i 's/Interface "'""eth0""'"/Interface "'""$NET""'"/g' /etc/vnstat.conf
chown vnstat:vnstat /var/lib/vnstat -R
systemctl enable vnstat
/etc/init.d/vnstat restart
rm -f /root/vnstat-2.6.tar.gz
rm -rf /root/vnstat-2.6

mkdir -p /usr/local/geovpn
mkdir -p /etc/geovpn

# install stunnel 5 
cd /root/
wget -q -O stunnel5.zip "https://${geovpnnnn}/stunnel5.zip" > /dev/null 2>&1
unzip -o stunnel5.zip
cd /root/stunnel
chmod +x configure
./configure
make
make install
cd /root
rm -r -f stunnel
rm -f stunnel5.zip
mkdir -p /etc/stunnel5
chmod 644 /etc/stunnel5

# Download Config Stunnel5
cat > /etc/stunnel5/stunnel5.conf <<-END
cert = /etc/stunnel5/stunnel5.pem
client = no
socket = a:SO_REUSEADDR=1
socket = l:TCP_NODELAY=1
socket = r:TCP_NODELAY=1

[dropbear]
accept = 445
connect = 127.0.0.1:109

[openssh]
accept = 777
connect = 127.0.0.1:443

[openvpn]
accept = 990
connect = 127.0.0.1:1194

END

# make a certificate
openssl genrsa -out key.pem 2048
openssl req -new -x509 -key key.pem -out cert.pem -days 1095 \
-subj "/C=$country/ST=$state/L=$locality/O=$organization/OU=$organizationalunit/CN=$commonname/emailAddress=$email"
cat key.pem cert.pem >> /etc/stunnel5/stunnel5.pem

# Service Stunnel5 systemctl restart stunnel5
cat > /etc/systemd/system/stunnel5.service << END
[Unit]
Description=Stunnel5 Service
Documentation=https://stunnel.org
Documentation=https://github.com/geovpn
After=syslog.target network-online.target

[Service]
ExecStart=/usr/local/geovpn/stunnel5 /etc/stunnel5/stunnel5.conf
Type=forking

[Install]
WantedBy=multi-user.target
END

# Service Stunnel5 /etc/init.d/stunnel5
wget -q -O /etc/init.d/stunnel5 "https://${geovpnnnn}/stunnel5.init" > /dev/null 2>&1

# Ubah Izin Akses
chmod 600 /etc/stunnel5/stunnel5.pem
chmod +x /etc/init.d/stunnel5
cp /usr/local/bin/stunnel /usr/local/geovpn/stunnel5

# Remove File
rm -r -f /usr/local/share/doc/stunnel/
rm -r -f /usr/local/etc/stunnel/
rm -f /usr/local/bin/stunnel
rm -f /usr/local/bin/stunnel3
rm -f /usr/local/bin/stunnel4
rm -f /usr/local/bin/stunnel5

# Restart Stunnel 5
systemctl stop stunnel5
systemctl enable stunnel5
systemctl start stunnel5
systemctl restart stunnel5
/etc/init.d/stunnel5 restart
/etc/init.d/stunnel5 status
/etc/init.d/stunnel5 restart

#OpenVPN
wget https://${geovpn}/vpn.sh &&  chmod +x vpn.sh && ./vpn.sh > /dev/null 2>&1

# install fail2ban
apt -y install fail2ban > /dev/null 2>&1

# banner /etc/issue.net
echo "Banner /etc/issue.net" >>/etc/ssh/sshd_config
sed -i 's@DROPBEAR_BANNER=""@DROPBEAR_BANNER="/etc/issue.net"@g' /etc/default/dropbear

# Install BBR
wget https://${geovpn}/bbr.sh && chmod +x bbr.sh && ./bbr.sh

# Ganti Banner
wget -O /etc/issue.net "https://${geovpn}/issue.net" > /dev/null 2>&1

# blockir torrent
iptables -A FORWARD -m string --string "get_peers" --algo bm -j DROP
iptables -A FORWARD -m string --string "announce_peer" --algo bm -j DROP
iptables -A FORWARD -m string --string "find_node" --algo bm -j DROP
iptables -A FORWARD -m string --algo bm --string "BitTorrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "BitTorrent protocol" -j DROP
iptables -A FORWARD -m string --algo bm --string "peer_id=" -j DROP
iptables -A FORWARD -m string --algo bm --string ".torrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "announce.php?passkey=" -j DROP
iptables -A FORWARD -m string --algo bm --string "torrent" -j DROP
iptables -A FORWARD -m string --algo bm --string "announce" -j DROP
iptables -A FORWARD -m string --algo bm --string "info_hash" -j DROP
iptables-save > /etc/iptables.up.rules
iptables-restore -t < /etc/iptables.up.rules
netfilter-persistent save
netfilter-persistent reload

# download script
cd /usr/bin
wget -O portsshnontls "https://${geovpn}/portsshnontls.sh" > /dev/null 2>&1
wget -O portsshws "https://${geovpn}/portsshws.sh" > /dev/null 2>&1
wget -O addhost "https://${geovpn}/addhost.sh" > /dev/null 2>&1
wget -O autoreboot "https://${geovpn}/autoreboot.sh" > /dev/null 2>&1
wget -O about "https://${geovpn}/about.sh" > /dev/null 2>&1
wget -O menu "https://${geovpn}/menu.sh" > /dev/null 2>&1
wget -O addssh "https://${geovpn}/addssh.sh" > /dev/null 2>&1
wget -O trialssh "https://${geovpn}/trialssh.sh" > /dev/null 2>&1
wget -O delssh "https://${geovpn}/delssh.sh" > /dev/null 2>&1
wget -O member "https://${geovpn}/member.sh" > /dev/null 2>&1
wget -O banner "https://${geovpn}/banner.sh" > /dev/null 2>&1
wget -O delexp "https://${geovpn}/delexp.sh" > /dev/null 2>&1
wget -O cekssh "https://${geovpn}/cekssh.sh" > /dev/null 2>&1
wget -O restart "https://${geovpn}/restart.sh" > /dev/null 2>&1
wget -O onoffservice "https://${geovpn}/onoffservice.sh" > /dev/null 2>&1
wget -O speedtest "https://${geovpn}/speedtest_cli.py" > /dev/null 2>&1
wget -O info "https://${geovpn}/info.sh" > /dev/null 2>&1
wget -O ram "https://${geovpn}/ram.sh" > /dev/null 2>&1
wget -O renewssh "https://${geovpn}/renewssh.sh" > /dev/null 2>&1
wget -O autokill "https://${geovpn}/autokill.sh" > /dev/null 2>&1
wget -O ceklim "https://${geovpn}/ceklim.sh" > /dev/null 2>&1
wget -O tendang "https://${geovpn}/tendang.sh" > /dev/null 2>&1
wget -O clearlog "https://${geovpn}/clearlog.sh" > /dev/null 2>&1
wget -O changeport "https://${geovpn}/changeport.sh" > /dev/null 2>&1
wget -O portovpn "https://${geovpn}/portovpn.sh" > /dev/null 2>&1
wget -O portwg "https://${geovpn}/portwg.sh" > /dev/null 2>&1
wget -O porttrojan "https://${geovpn}/porttrojan.sh" > /dev/null 2>&1
wget -O portsstp "https://${geovpn}/portsstp.sh" > /dev/null 2>&1
wget -O portsquid "https://${geovpn}/portsquid.sh" > /dev/null 2>&1
wget -O portv2ray "https://${geovpn}/portv2ray.sh" > /dev/null 2>&1
wget -O portvless "https://${geovpn}/portvless.sh" > /dev/null 2>&1
wget -O wbmn "https://${geovpn}/webmin.sh" > /dev/null 2>&1
wget -O xp "https://${geovpn}/xp.sh" > /dev/null 2>&1
wget -O swapkvm "https://${geovpn}/swapkvm.sh" > /dev/null 2>&1
wget -O addv2ray "https://${geovpnn}/addv2ray.sh" > /dev/null 2>&1
wget -O trialv2ray "https://${geovpnn}/trialv2ray.sh" > /dev/null 2>&1
wget -O addvless "https://${geovpnn}/addvless.sh" > /dev/null 2>&1
wget -O addtrojan "https://${geovpnn}/addtrojan.sh" > /dev/null 2>&1
wget -O delv2ray "https://${geovpnn}/delv2ray.sh" > /dev/null 2>&1
wget -O delvless "https://${geovpnn}/delvless.sh" > /dev/null 2>&1
wget -O deltrojan "https://${geovpnn}/deltrojan.sh" > /dev/null 2>&1
wget -O cekv2ray "https://${geovpnn}/cekv2ray.sh" > /dev/null 2>&1
wget -O cekvless "https://${geovpnn}/cekvless.sh" > /dev/null 2>&1
wget -O cektrojan "https://${geovpnn}/cektrojan.sh" > /dev/null 2>&1
wget -O renewv2ray "https://${geovpnn}/renewv2ray.sh" > /dev/null 2>&1
wget -O renewvless "https://${geovpnn}/renewvless.sh" > /dev/null 2>&1
wget -O renewtrojan "https://${geovpnn}/renewtrojan.sh" > /dev/null 2>&1
wget -O certv2ray "https://${geovpnn}/certv2ray.sh" > /dev/null 2>&1
wget -O addtrgo "https://${geovpnnn}/addtrgo.sh" > /dev/null 2>&1
wget -O deltrgo "https://${geovpnnn}/deltrgo.sh" > /dev/null 2>&1
wget -O renewtrgo "https://${geovpnnn}/renewtrgo.sh" > /dev/null 2>&1
wget -O cektrgo "https://${geovpnnn}/cektrgo.sh" > /dev/null 2>&1
wget -O menu-backup "https://${geovpnnnnn}/menu-backup.sh" > /dev/null 2>&1
wget -O menu-domain "https://${geovpnnnnn}/menu-domain.sh" > /dev/null 2>&1
wget -O menu-l2tp "https://${geovpnnnnn}/menu-l2tp.sh" > /dev/null 2>&1
wget -O menu "https://${geovpnnnnn}/menu.sh" > /dev/null 2>&1
wget -O menu-pptp "https://${geovpnnnnn}/menu-pptp.sh" > /dev/null 2>&1
wget -O menu-shadowsocks "https://${geovpnnnnn}/menu-shadowsocks.sh" > /dev/null 2>&1
wget -O menu-ssh "https://${geovpnnnnn}/menu-ssh.sh" > /dev/null 2>&1
wget -O menu-sstp "https://${geovpnnnnn}/menu-sstp.sh" > /dev/null 2>&1
wget -O menu-tools "https://${geovpnnnnn}/menu-tools.sh" > /dev/null 2>&1
wget -O menu-trial "https://${geovpnnnnn}/menu-trial.sh" > /dev/null 2>&1
wget -O menu-trojan "https://${geovpnnnnn}/menu-trojan.sh" > /dev/null 2>&1
wget -O menu-v2ray "https://${geovpnnnnn}/menu-v2ray.sh" > /dev/null 2>&1
wget -O menu-vpn "https://${geovpnnnnn}/menu-vpn.sh" > /dev/null 2>&1
wget -O menu-wireguard "https://${geovpnnnnn}/menu-wireguard.sh" > /dev/null 2>&1
wget -O bbr "https://${geovpnnnnn}/bbr.sh" > /dev/null 2>&1
wget -O status "https://${geovpnnnnn}/status.sh" > /dev/null 2>&1
wget -O running "https://${geovpnnnnn}/running.sh" > /dev/null 2>&1
#wget -O bannerku "https://${geovpnnnnn}/bannerku" > /dev/null 2>&1
#wget -O bannerDOMAIN "https://${geovpnnnnnn}/bannerDOMAIN" > /dev/null 2>&1
#wget -O bannerTRIAL "https://${geovpnnnnnn}/bannerTRIAL" > /dev/null 2>&1
#wget -O bannerL2TP "https://${geovpnnnnnn}/bannerL2TP" > /dev/null 2>&1
#wget -O bannerPPTP "https://${geovpnnnnnn}/bannerPPTP" > /dev/null 2>&1
#wget -O bannerSHADOWSOCK "https://${geovpnnnnnn}/bannerSHADOWSOCK" > /dev/null 2>&1
#wget -O bannerSSH "https://${geovpnnnnnn}/bannerSSH" > /dev/null 2>&1
#wget -O bannerSSTP "https://${geovpnnnnnn}/bannerSSTP" > /dev/null 2>&1
#wget -O bannerSYSTEM "https://${geovpnnnnnn}/bannerSYSTEM" > /dev/null 2>&1
#wget -O bannerTROJAN "https://${geovpnnnnnn}/bannerTROJAN" > /dev/null 2>&1
#wget -O bannerV2RAY "https://${geovpnnnnnn}/bannerV2RAY" > /dev/null 2>&1
#wget -O bannerVPN "https://${geovpnnnnnn}/bannerVPN" > /dev/null 2>&1
#wget -O bannerWIREGUARD "https://${geovpnnnnnn}/bannerWIREGUARD" > /dev/null 2>&1
#wget -O bannerBACKUP "https://${geovpnnnnnn}/bannerBACKUP" > /dev/null 2>&1
#wget -O addcf "https://${geovpnnnnnnn}/addcf.sh" > /dev/null 2>&1
wget -O cfd "https://${geovpnnnnnnn}/cfd.sh" > /dev/null 2>&1
wget -O cff "https://${geovpnnnnnnn}/cff.sh" > /dev/null 2>&1
wget -O cfh "https://${geovpnnnnnnn}/cfh.sh" > /dev/null 2>&1
wget -O domen "https://${geovpnnnnnnn}/host.sh" > /dev/null 2>&1
wget -O pointing "https://${geovpnnnnnnn}/pointing.sh" > /dev/null 2>&1
wget -O bw "https://${geovpnnnnnnn}/bw.sh" > /dev/null 2>&1
#wget -O update "https://${geovpnnnnnnn}/update.sh" > /dev/null 2>&1
wget -O domen "https://${geovpnnnnnnn}/host.sh" > /dev/null 2>&1
wget -O trial-akun "https://${geovpnnnnnnnn}/trial-akun.sh" > /dev/null 2>&1
wget -O triall2tp "https://${geovpnnnnnnnn}/triall2tp.sh" > /dev/null 2>&1
wget -O trialpptp "https://${geovpnnnnnnnn}/trialpptp.sh" > /dev/null 2>&1
wget -O trialss "https://${geovpnnnnnnnn}/trialss.sh" > /dev/null 2>&1
wget -O trialssh "https://${geovpnnnnnnnn}/trialssh.sh" > /dev/null 2>&1
wget -O trialssr "https://${geovpnnnnnnnn}/trialssr.sh" > /dev/null 2>&1
wget -O trialsstp "https://${geovpnnnnnnnn}/trialsstp.sh" > /dev/null 2>&1
wget -O trialtrojan "https://${geovpnnnnnnnn}/trialtrojan.sh" > /dev/null 2>&1
wget -O trialv2ray "https://${geovpnnnnnnnn}/trialv2ray.sh" > /dev/null 2>&1
wget -O trialvless "https://${geovpnnnnnnnn}/trialvless.sh" > /dev/null 2>&1
wget -O trialwg "https://${geovpnnnnnnnn}/trialwg.sh" > /dev/null 2>&1
wget -O trialtrgo "https://${geovpnnnnnnnn}/trialtrgo.sh" > /dev/null 2>&1
wget -q -O /usr/bin/xtls "https://istriku.me/tetbot/xray/xtls.sh" && chmod +x /usr/bin/xtls && xtls && rm -f /usr/bin/xtls
chmod +x trial-akun
chmod +x trialpptp
chmod +x trialss
chmod +x trialssh
chmod +x trialssr
chmod +x trialsstp
chmod +x trialtrojan
chmod +x triall2tp
chmod +x trialv2ray
chmod +x trialvless
chmod +x trialwg
chmod +x trialtrgo
chmod +x autoreboot
chmod +x addhost
chmod +x menu
chmod +x addssh
chmod +x trialssh
chmod +x delssh
chmod +x member
chmod +x banner
chmod +x delexp
chmod +x cekssh
chmod +x restart
chmod +x speedtest
chmod +x info
chmod +x about
chmod +x autokill
chmod +x tendang
chmod +x ceklim
chmod +x ram
chmod +x renewssh
chmod +x clearlog
chmod +x changeport
chmod +x portovpn
chmod +x portwg
chmod +x porttrojan
chmod +x portsstp
chmod +x portsquid
chmod +x portv2ray
chmod +x portvless
chmod +x wbmn
chmod +x xp
chmod +x swapkvm
chmod +x addv2ray
chmod +x addvless
chmod +x addtrojan
chmod +x delv2ray
chmod +x delvless
chmod +x deltrojan
chmod +x cekv2ray
chmod +x cekvless
chmod +x cektrojan
chmod +x renewv2ray
chmod +x renewvless
chmod +x renewtrojan
chmod +x certv2ray
chmod +x addtrgo
chmod +x deltrgo
chmod +x renewtrgo
chmod +x cektrgo
chmod +x menu-backup
chmod +x menu-domain
chmod +x menu-l2tp
chmod +x menu
chmod +x menu-pptp
chmod +x menu-shadowsocks
chmod +x menu-ssh
chmod +x menu-sstp
chmod +x menu-tools
chmod +x menu-trial
chmod +x menu-trojan
chmod +x menu-v2ray
chmod +x menu-vpn
chmod +x menu-wireguard
chmod +x running
chmod +x status
chmod +x bbr
chmod +x update
chmod +x bannerku
chmod +x bannerDOMAIN
chmod +x bannerL2TP
chmod +x bannerPPTP
chmod +x bannerSHADOWSOCK
chmod +x bannerSSH
chmod +x bannerSSTP
chmod +x bannerSYSTEM
chmod +x bannerTROJAN
chmod +x bannerV2RAY
chmod +x bannerVPN
chmod +x bannerWIREGUARD
chmod +x portsshws
chmod +x portsshnontls
chmod +x cfd
chmod +x cff
chmod +x cfh
chmod +x domen
chmod +x pointing
chmod +x bw
chmod +x onoffservice
echo "0 5 * * * root clearlog && reboot" >> /etc/crontab
echo "0 0 * * * root xp" >> /etc/crontab
# remove unnecessary files
cd
apt autoclean -y
apt -y remove --purge unscd
apt-get -y --purge remove samba*;
apt-get -y --purge remove apache2*;
apt-get -y --purge remove bind9*;
apt-get -y remove sendmail*
apt autoremove -y
# finishing
cd
chown -R www-data:www-data /home/vps/public_html
sleep 1
clear
echo -e "$yell[SERVICE]$NC Restart All service SSH & OVPN"
/etc/init.d/nginx restart
sleep 1
echo -e "[ ${green}ok${NC} ] Restarting nginx"
/etc/init.d/openvpn restart
sleep 1
echo -e "[ ${green}ok${NC} ] Restarting openvpn "
/etc/init.d/cron restart
sleep 1
echo -e "[ ${green}ok${NC} ] Restarting cron "
/etc/init.d/ssh restart
sleep 1
echo -e "[ ${green}ok${NC} ] Restarting ssh "
/etc/init.d/dropbear restart
sleep 1
echo -e "[ ${green}ok${NC} ] Restarting dropbear "
/etc/init.d/fail2ban restart
sleep 1
echo -e "[ ${green}ok${NC} ] Restarting fail2ban "
/etc/init.d/sslh restart
sleep 1
echo -e "[ ${green}ok${NC} ] Restarting sslh "
/etc/init.d/stunnel5 restart
sleep 1
echo -e "[ ${green}ok${NC} ] Restarting stunnel5 "
/etc/init.d/vnstat restart
sleep 1
echo -e "[ ${green}ok${NC} ] Restarting vnstat "
/etc/init.d/fail2ban restart
sleep 1
echo -e "[ ${green}ok${NC} ] Restarting fail2ban "
/etc/init.d/squid restart
sleep 1
echo -e "[ ${green}ok${NC} ] Restarting squid "
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7400 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7500 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7600 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7700 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7800 --max-clients 500
screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7900 --max-clients 500
history -c
echo "unset HISTFILE" >> /etc/profile

cd
yellow() { echo -e "\\033[33;1m${*}\\033[0m"; }
sleep 1
yellow "SSH & OVPN install successfully"
sleep 5
rm -f /root/key.pem
rm -f /root/cert.pem
rm -f /root/ssh-vpn.sh

# finihsing
clear
