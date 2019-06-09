#!/usr/bin/env python
import i3ipc
import sys
count = 0
test = []

i3 = i3ipc.Connection()

for leaf in i3.get_tree().scratchpad().leaves():
	yolo = leaf.window_class	
	test.append(yolo)
	count+=1
if (count !=0 ):
	print("Scratchpad:",count,"(",*test,")")
else:
	print("Scratchpad:",count)
