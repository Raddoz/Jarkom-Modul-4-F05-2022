echo "
auto eth0
iface eth0 inet static
	address 10.31.8.2
	netmask 255.255.255.252

auto eth1
iface eth1 inet static
	address 10.31.0.1
	netmask 255.255.252.0

auto eth2
iface eth2 inet static
	address 10.31.5.1
	netmask 255.255.255.252

" > /etc/network/interfaces

echo "nameserver 192.168.122.1" > /etc/resolv.conf

#The Order
route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.31.8.1
#Guideau
route add -net 10.31.0.0 netmask 255.255.252.0 gw 10.31.0.2
#The Dauntless
route add -net 10.31.4.0 netmask 255.255.252.0 gw 10.31.5.2

ip route | grep "via"
