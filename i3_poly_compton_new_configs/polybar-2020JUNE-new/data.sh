#!/bin/bash
cat  /proc/net/dev | grep enp3s0 | tr ':' ' ' | tr -s ' ' | cut -d ' ' -f 3,11 | awk '{print(($1+$2)/1024)"MB"}'
