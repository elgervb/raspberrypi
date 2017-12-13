sudo apt-get update
sudo apt-get upgrade

sudo apt-get install hostapd dnsmasq -y

sudo systemctl stop hostapd
sudo systemctl stop dnsmasq

sudo vi /etc/dhcpcd.conf

# Static IP address
#
# interface wlan0
# static ip_address=192.168.192.155/24 
# denyinterfaces eth0
# denyinterfaces wlan0


sudo mv /etc/dnsmasq.conf /etc/dnsmasq.conf.orig
sudo vi /etc/dnsmasq.conf

# interface=wlan0
#   dhcp-range=192.168.192.156,192.168.192.176,255.255.255.0,24h


sudo vi /etc/hostapd/hostapd.conf

interface=wlan0
bridge=br0
hw_mode=g
channel=7
wmm_enabled=0
macaddr_acl=0
auth_algs=1
ignore_broadcast_ssid=0
wpa=2
wpa_key_mgmt=WPA-PSK
wpa_pairwise=TKIP
rsn_pairwise=CCMP
ssid=XXXyourSSIDXXX
wpa_passphrase=XXXyourpasswordXXX

sudo vi /etc/default/hostapd

# DAEMON_CONF="/etc/hostapd/hostapd.conf"

sudo vi /etc/sysctl.conf

## remove comment #
# net.ipv4.ip_forward=1

sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
sudo sh -c "iptables-save > /etc/iptables.ipv4.nat"
sudo iptables-restore < /etc/iptables.ipv4.nat


sudo apt-get install bridge-utils
sudo brctl addbr br0
sudo brctl addif br0 eth0

sudo vi /etc/network/interfaces

# add lines:
# auto br0
# iface br0 inet manual
# bridge_ports eth0 wlan0

sudo reboot
