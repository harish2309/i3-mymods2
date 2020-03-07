#!/bin/bash


int=$(ip -4 route ls | grep default | grep -Po '(?<=dev )(\S+)' | head -1)


if [ $int ] 
then
	IP=$(curl -s https://api.ipify.org)
	cnty=$(curl -s https://ipapi.co/$IP/country/)
	city=$(curl -s https://ipapi.co/$IP/city/)
	capt=$(curl -s https://ipapi.co/$IP/country_capital)
	echo "$cnty, $city, $capt"	
else
	echo "disconnected"
fi
