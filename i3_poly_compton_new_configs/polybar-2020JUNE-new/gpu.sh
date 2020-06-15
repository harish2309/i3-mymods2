#!/bin/bash
echo $(nvidia-smi|grep %|awk '{print $3}'|colrm 3)°C