#!/bin/bash
int=$(ip -4 route ls | grep default | grep -Po '(?<=dev )(\S+)' | head -1)

if [ $int ]
then

	#IP=$(wget -qO - icanhazip.com)
	IP=$(curl -s https://freegeoip.app/xml/ | grep -i "<IP>" | grep -Po '(?<=\<IP\>)(\S+)' | sed 's/<\/IP>//g')
	#CUNT=$(curl -s https://ipvigilante.com | jq '.data.country_name' | sed 's/\"//g')
	CUNT=$(curl -s https://freegeoip.app/xml/ | grep -i City | cut -c 8-30 | cut -d \< -f 1)	
	echo " $IP, $CUNT"
else
	echo "disconnected"
fi
