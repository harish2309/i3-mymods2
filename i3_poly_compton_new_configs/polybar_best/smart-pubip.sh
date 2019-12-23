#!/bin/bash


int=$(ip -4 route ls | grep default | grep -Po '(?<=dev )(\S+)' | head -1)


if [ $int ] 
then
	IP=$(dig TXT +short o-o.myaddr.l.google.com @ns1.google.com | awk -F'"' '{print $2}')
	echo $IP	
else
	echo "disconnected"
fi