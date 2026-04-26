#!/bin/sh

# ##############
# Set up Network
# ##############


network_interface=eno1
ip_address="192.168.178.69/24"
gateway="192.168.178.1"


set_interface_up () {
	ip link set up $network_interface
}

add_ip_address_to_interface () {
	ip a add $ip_address dev $network_interface
}

set_gateway () {
	ip route add default via $gateway
}


set_interface_up
add_ip_address_to_interface
set_gateway
