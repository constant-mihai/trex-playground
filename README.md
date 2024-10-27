# A docker playground for trex
https://trex-tgn.cisco.com/trex/doc/trex_manual.html

## Prerequisites

Install docker and docker compose.

## Stateless example

The routing for this example is explained here:
https://trex-tgn.cisco.com/trex/doc/trex_config_guide.html#slide-2

Run
```
docker compose up -d
```

Jump into containers with:
```
docker exec -it --privileged <container-name> /bin/bash
```

In the docker container under /trex-core/scripts run:
```
./t-rex-64 -f cap2/dns.yaml -c 1 -m 1 -d 10
```
https://trex-tgn.cisco.com/trex/doc/trex_manual.html#_running_trex_understanding_output

## Statefull example: GTP-U
https://trex-tgn.cisco.com/trex/doc/trex_astf.html
TODO
