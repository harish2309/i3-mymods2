#!/bin/bash
 
int=$(ip -4 route ls | grep default | grep -Po '(?<=dev )(\S+)' | head -1)


if [ $int ] 
then
	R1=`cat /sys/class/net/$int/statistics/rx_bytes`
	T1=`cat /sys/class/net/$int/statistics/tx_bytes`
	sleep 1
	R2=`cat /sys/class/net/$int/statistics/rx_bytes`
	T2=`cat /sys/class/net/$int/statistics/tx_bytes`
	TBPS=`expr $T2 - $T1`
	RBPS=`expr $R2 - $R1`
	TKBPS=`expr $TBPS / 1024`
	RKBPS=`expr $RBPS / 1024`
	echo "TX $1: $TKBPS kB/s RX $1: $RKBPS kB/s"
	

else
	echo "disconnected"
fi

