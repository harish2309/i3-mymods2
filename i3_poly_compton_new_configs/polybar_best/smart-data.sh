#!/bin/bash


int=$(ip -4 route ls | grep default | grep -Po '(?<=dev )(\S+)' | head -1)


if [ $int ] 
then

	echo $(cat  /proc/net/dev | grep `ip -4 route ls | grep default | grep -Po '(?<=dev )(\S+)' | head -1` | tr ':' ' ' | tr -s ' ' | cut -d ' ' -f 3,11 | awk '{print(($1+$2)/1024)}' | awk -F . '{print "data " $1 " mb"}')
	
else
	echo "disconnected"
fi


