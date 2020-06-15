#!/bin/bash
read -r W H X Y < <(slop -t 0 -f "%w %h %x %y"); echo $((W/13))"X"$((H/26))+$X+$Y | xargs urxvt -geometry
