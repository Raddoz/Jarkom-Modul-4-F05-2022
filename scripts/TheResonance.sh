echo "
auto eth0
iface eth0 inet dhcp

auto eth1
iface eth1 inet static
	address 10.31.112.1
	netmask 255.255.255.252

auto eth2
iface eth2 inet static
	address 10.31.98.1
	netmask 255.255.255.252

auto eth3
iface eth3 inet static
	address 10.31.80.1
	netmask 255.255.255.252

auto eth4
iface eth4 inet static
	address 10.31.32.1
	netmask 255.255.255.252
" > /etc/network/interfaces

iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE -s 10.31.0.0/17

#The Beast
route add -net 10.31.112.0 netmask 255.255.255.252 gw 10.31.112.2
#The Magical
route add -net 10.31.96.0 netmask 255.255.224.0 gw 10.31.98.2
#The Instruments
route add -net 10.31.64.0 netmask 255.255.224.0 gw 10.31.80.2
#The Order
route add -net 10.31.0.0 netmask 255.255.192.0 gw 10.31.32.2

ip route | grep "via"

