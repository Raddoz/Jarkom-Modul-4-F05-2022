echo "
auto eth0
iface eth0 inet static
	address 10.31.96.3
	netmask 255.255.254.0
	gateway 10.31.96.1
" > /etc/network/interfaces

echo "nameserver 192.168.122.1" > /etc/resolv.conf
