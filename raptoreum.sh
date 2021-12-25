#!/bin/bash

POOL=stratum+tcps://eu.flockpool.com:5555
WALLET=RRT11pEKPdwT3QGfWWJq3XzFjBDFxQygvU
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-dhoe

cd "$(dirname "$0")"

chmod +x ./wildrig-multi --print-full --algo ghostrider --url stratum+tcps://eu.flockpool.com:5555 --user RRT11pEKPdwT3QGfWWJq3XzFjBDFxQygvU.dhoe --pass x
