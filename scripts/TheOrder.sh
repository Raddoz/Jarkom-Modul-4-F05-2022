echo "
auto eth0
iface eth0 inet static
	address 10.31.32.2
	netmask 255.255.255.252

auto eth1
iface eth1 inet static
	address 10.31.16.1
	netmask 255.255.255.192

auto eth2
iface eth2 inet static
	address 10.31.8.1
	netmask 255.255.255.252

" > /etc/network/interfaces

echo "nameserver 192.168.122.1" > /etc/resolv.conf

#The Resonance
route add -net 0.0.0.0 netmask 0.0.0.0 gw 10.31.32.1
#Ashaf(50host)
route add -net 10.31.16.0 netmask 255.255.255.192 gw 10.31.16.2
#The Minister
route add -net 10.31.0.0 netmask 255.255.224.0 gw 10.31.8.2

ip route | grep "via"
