#!/bin/bash
read -r W H X Y < <(slop -t 0 -f "%w %h %x %y"); echo $((W/11))"X"$((H/22))+$X+$Y | xargs uxterm -geometry
