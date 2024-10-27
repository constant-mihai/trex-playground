#!/bin/bash

# Set up routing so that this container forwards the requests back to trex.
# https://trex-tgn.cisco.com/trex/doc/trex_config_guide.html#slide-11
route add -net 48.0.0.0 netmask 255.0.0.0 gw 172.16.17.200
route add -net 16.0.0.0 netmask 255.0.0.0 gw 172.16.16.200 

while true; do
    echo running...
    sleep 1
done
