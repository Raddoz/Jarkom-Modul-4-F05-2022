echo "
auto eth0
iface eth0 inet static
	address 10.31.65.2
	netmask 255.255.255.252
	gateway 10.31.65.1

" > /etc/network/interfaces

echo "nameserver 192.168.122.1" > /etc/resolv.conf






