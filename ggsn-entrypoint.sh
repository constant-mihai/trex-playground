#!/bin/bash

./gtp-link add gtp1 ip &

for i in {0..255}; do
    ./gtp-tunnel add gtp1 v1 $i $i 16.0.0.$i 172.16.16.200 
done

# Packets go into gtp1 but do not get forwarded. why?
# gtp1 is a link, is this ethernet level?
#00:50:29.367991 gtp1  In  ifindex 2 ethertype IPv4 (0x0800), length 80: 16.0.0.52.29234 > 48.0.10.52.80: Flags [S], seq 1009056198, win 32768, options [mss 1460,nop,wscale 0,sackOK,TS val 1806161225 ecr 0], len
#gth 0
#
# This doesn't help
#iptables -A FORWARD -i gtp1 -o eth1 -d 48.0.0.0/16 -j ACCEPT

while true; do
    echo running...
    sleep 1
done
