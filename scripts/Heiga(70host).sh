echo "
auto eth0
iface eth0 inet static
	address 10.31.72.130
	netmask 255.255.255.128
	gateway 10.31.72.129
" > /etc/network/interfaces

echo "nameserver 192.168.122.1" > /etc/resolv.conf
