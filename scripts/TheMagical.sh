echo "
auto eth0
iface eth0 inet static
	address 10.31.98.2
	netmask 255.255.255.252

auto eth1
iface eth1 inet static
	address 10.31.96.1
	netmask 255.255.254.0

" > /etc/network/interfaces

echo "nameserver 192.168.122.1" > /etc/resolv.conf

#The Resonance
route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.31.98.1

ip route | grep "via"
