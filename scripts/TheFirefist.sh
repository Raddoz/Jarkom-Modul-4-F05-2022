echo "
auto eth0
iface eth0 inet static
	address 10.31.68.2
	netmask 255.255.255.252

auto eth1
iface eth1 inet static
	address 10.31.66.1
	netmask 255.255.254.0

auto eth2
iface eth2 inet static
	address 10.31.64.1
	netmask 255.255.254.0

" > /etc/network/interfaces

echo "nameserver 192.168.122.1" > /etc/resolv.conf

#The Instruments
route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.31.68.1
#Oakleave
route add -net 10.31.66.0 netmask 255.255.254.0 gw 10.31.66.2
#Keith
route add -net 10.31.64.0 netmask 255.255.254.0 gw 10.31.64.3
#The Queen
route add -net 10.31.65.0 netmask 255.255.255.0 gw 10.31.64.2

ip route | grep "via"

