echo "
auto eth0
iface eth0 inet static
	address 10.31.80.2
	netmask 255.255.255.252

auto eth1
iface eth1 inet static
	address 10.31.73.1
	netmask 255.255.255.252

auto eth2
iface eth2 inet static
	address 10.31.68.1
	netmask 255.255.255.252

auto eth3
iface eth3 inet static
	address 10.31.76.1
	netmask 255.255.255.128
" > /etc/network/interfaces

echo "nameserver 192.168.122.1" > /etc/resolv.conf

#The Resonance
route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.31.80.1
#The Profound
route add -net 10.31.72.0 netmask 255.255.248.0 gw 10.31.73.2
#The Firefist
route add -net 10.31.64.0 netmask 255.255.248.0 gw 10.31.68.2
#Keith
route add -net 10.31.76.0 netmask 255.255.255.128 gw 10.31.76.2

ip route | grep "via"

