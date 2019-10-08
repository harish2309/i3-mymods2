#!/usr/bin/zsh
ps cax | grep compton
if [ $? -eq 0 ];
then
pkill compton
else
compton -b
fi
