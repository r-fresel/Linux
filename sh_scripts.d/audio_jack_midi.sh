#!/bin/sh

# ############################################
# Set up jackd and a2jmidid and start qjackctl
# ############################################


audio_interface="Scarlett 18i20 USB"

get_audio_interface () {
	user_audio_interface=0

	printf "Enter audio interface name (default: Scarlett 18i20): "
	read -r user_audio_interface

	if [ -z $user_audio_interface ]; then
		printf 'Using default audio interface (%s).\n' \
			"$audio_interface"
		return 0
	fi

	card_exists=$(
		aplay --list-devices | \
			grep \
				--ignore-case $user_audio_interface \
				--quiet
			echo $?
	)
	if [ $card_exists = 0 ]; then
		printf '%s exists.\n' "$user_audio_interface"
		aplay --list-devices | \
			grep \
				--ignore-case $user_audio_interface
	fi
}

print_card_number () {
	card_number=0

	aplay --list-devices | \
		grep --ignore-case "$audio_interface" | \
		awk '{print substr($2, 1, length($2)-1)}'
	
}

print_device_number () {
	device_number=0

	aplay --list-devices | \
		grep --ignore-case "$audio_interface" | \
		awk '{print substr($8, 1, length($8)-1)}'
}


get_audio_interface
echo $card_exists
print_card_number
print_device_number
