#!/bin/bash

POOL=stratum+tcp://ergo-us-east1.nanopool.org:11111
WALLET=9feHfjZXGQTuB7QFHDq19ytpzrH2DsTcha5V2T5eBmtxU8jpDJw
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./arni && sudo ./arni -a ergo -o $POOL -u $WALLET.$WORKER $@