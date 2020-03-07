#!/bin/bash


int=$(ip -4 route ls | grep default | grep -Po '(?<=dev )(\S+)' | head -1)


if [ $int ] 
then
	IP=$(curl -s https://api.ipify.org)
	echo $IP	
else
	echo "disconnected"
fi
